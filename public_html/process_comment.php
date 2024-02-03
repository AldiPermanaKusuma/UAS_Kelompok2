<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['comment_content'], $_POST['post_id'])) {
        $user_id = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : null;
        
        if (!$user_id) {
            echo "User not logged in.";
            exit;
        }

        $post_id = filter_var($_POST['post_id'], FILTER_VALIDATE_INT);
        $comment_content = htmlspecialchars($_POST['comment_content'], ENT_QUOTES, 'UTF-8');

        if ($post_id === false || $comment_content === false) {
            echo "Invalid request parameters.";
            exit;
        }

        require_once("db_functions.php");
        $pdo = connect_to_db();

        // Simpan komentar ke dalam database
        $success = save_comment($pdo, $user_id, $post_id, $comment_content);

        if ($success) {
            header("Location: index.php"); // Ganti dengan halaman yang sesuai
            exit;
        } else {
            echo "Error saving comment.";
        }
    } else {
        echo "Invalid request parameters.";
    }
} else {
    echo "Invalid request method.";
}
?>
