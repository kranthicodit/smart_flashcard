<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Flashcard extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Flashcard_model');
        header('Content-Type: application/json');
    }

    public function flashcard()
    {
        $data = json_decode(file_get_contents('php://input'), true);

        if (!$data || !isset($data['student_id'], $data['question'], $data['answer'])) {
            echo json_encode(['error' => 'Invalid input']);
            return;
        }

        $subject = $this->detect_subject($data['question']);
        $save = [
            'student_id' => $data['student_id'],
            'question' => $data['question'],
            'answer' => $data['answer'],
            'subject' => $subject
        ];

        $this->Flashcard_model->insert_flashcard($save);

        echo json_encode([
            'message' => 'Flashcard added successfully',
            'subject' => $subject
        ]);
    }

    public function get_subject()
    {
        $student_id = $this->input->get('student_id');
        $limit = $this->input->get('limit');

        if (!$student_id || !$limit) {
            echo json_encode(['error' => 'Missing student_id or limit']);
            return;
        }

        $result = $this->Flashcard_model->get_flashcards_by_student($student_id, $limit);
        echo json_encode($result);
    }

    private function detect_subject($text)
    {
        $text = strtolower($text);

        $keywords = [
            'physics' => ['newton', 'force', 'acceleration', 'velocity'],
            'chemistry' => ['atom', 'molecule', 'reaction', 'acid', 'base'],
            'biology' => ['photosynthesis', 'cell', 'organism', 'mitochondria'],
            'math' => ['algebra', 'geometry', 'calculus', 'equation', 'matrix'],
            'history' => ['revolution', 'war', 'empire', 'president', 'ancient'],
            'geography' => ['continent', 'ocean', 'mountain', 'climate', 'river']
        ];

        foreach ($keywords as $subject => $words) {
            foreach ($words as $word) {
                if (strpos($text, $word) !== false) {
                    return ucfirst($subject);
                }
            }
        }

        return 'General';
    }
}
