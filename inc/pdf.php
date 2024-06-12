<?php
require("fpdf.php");

class PDF extends FPDF {
    // Cabeçalho
    function Header() {
        $this->SetFont('Arial', 'B', 12);
        $this->Cell(0, 10, 'Lista de Usuarios', 0, 1, 'C');
        $this->Ln(5);
    }

    // Rodapé
    function Footer() {
        $this->SetY(-15);
        $this->SetFont('Arial', 'I', 8);
        $this->Cell(0, 10, 'Pagina ' . $this->PageNo(), 0, 0, 'C');
    }

    // Função para a tabela
    function ImprovedTable($header, $data) {
        // Largura das colunas
        $w = array(20, 60, 60, 40);
        // Cabeçalho
        for ($i = 0; $i < count($header); $i++) {
            $this->Cell($w[$i], 7, $header[$i], 1, 0, 'C');
        }
        $this->Ln();
        // Dados
        foreach ($data as $row) {
            $this->Cell($w[0], 20, $row['id'], 'LR');
            $this->Cell($w[1], 20, $row['nome'], 'LR');
            $this->Cell($w[2], 20, $row['user'], 'LR');
            $this->Cell($w[3], 20, '', 'LR'); // Empty cell for the image

            // Salva a posição atual
            $x = $this->GetX();
            $y = $this->GetY();

            // Renderiza a imagem, se houver
            if (!empty($row['foto']) && file_exists("fotos/" . $row['foto'])) {
                $this->Image("fotos/" . $row['foto'], $x - 40, $y, 20);
            } else {
                $this->Cell(20, 20, 'Não', 'LR', 0, 'C');
            }

            $this->Ln();
        }
        // Linha de fechamento
        $this->Cell(array_sum($w), 0, '', 'T');
    }
}

?>