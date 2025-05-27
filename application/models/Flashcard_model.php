<?php
class Flashcard_model extends CI_Model
{
    public function insert_flashcard($data)
    {
        return $this->db->insert('flashcards', $data);
    }

    public function get_flashcards_by_student($student_id, $limit)
    {
        $this->db->where('student_id', $student_id);
        $query = $this->db->get('flashcards');

        $flashcards = $query->result_array();

        $grouped = [];
        foreach ($flashcards as $card) {
            $grouped[$card['subject']][] = $card;
        }
        
        $result = [];
        foreach ($grouped as $subject => $cards) {
            shuffle($cards);
            $result[] = $cards[0];
        }

        shuffle($result);
        return array_slice($result, 0, $limit);
    }
}
