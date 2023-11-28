<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Api extends CI_Controller {
	public function grafikth(){
		$dt = $this->Mapi->grafiktahun();
        echo base64_encode(json_encode($dt));
    }

    public function bukubytahun_uri(){
        $tahun = base64_decode($this->uri->segment(3));
        $dt = $this->Mapi->databuku($tahun);
        echo json_encode($dt);
    }

    // public function bukubytahun_post(){
    //     $tahun = $this->input->post("th");
    //     $dt = $this->Mapi->databuku($tahun);
    //     echo base64_encode(json_encode($dt));
    // }

    public function bukubytahun_post(){
        $dt = json_decode(file_get_contents("php://input"));
        $tahun = $dt->th;
        $dt = $this->Mapi->databuku($tahun);
        echo base64_encode(json_encode($dt));
    }
}