package org.example.springboard.board;

import org.example.springboard.UserUtils;
import org.example.springboard.board.model.BoardEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/board")
public class BoardController {
    @Autowired
    private BoardService service;

    @Autowired
    private UserUtils userUtils;

    @GetMapping("/write")
    public void write(){}

    @PostMapping("/write")
    public String writeProc(BoardEntity entity, RedirectAttributes reAttr){
        int result = service.insBoard(entity);
        if(result ==0){
            //RedirectAttributes는 redirect와 관련되어 있다.
            //reAttr.addAttribute("msg","글 등록에 실패하였습니다."); 쿼리스트링으로 날린다
            reAttr.addFlashAttribute("msg","글 등록에 실패하였습니다."); //request로 날린다
            reAttr.addFlashAttribute("data",entity);
            return "redirect:/board/write";
        }
        return "redirect:/board/list";
    }


    @GetMapping("/list")
    public void list(Model model){
        model.addAttribute("list",service.selBoardList());
    }

    @GetMapping("/detail")
    public void detail(Model model, BoardEntity entity){
        service.updBoardHitsUp(entity);
        model.addAttribute("data", service.selBoard(entity));
    }

    @GetMapping("/mod")
    public void mod(Model model, BoardEntity entity){
        model.addAttribute("data", service.selBoard(entity));
    }

    @PostMapping("/mod")
    public String modPoc(BoardEntity entity){
        int result = service.updBoard(entity);
        return "redirect:/board/detail?iboard=" + entity.getIboard();
    }

    @GetMapping("/del")
    public String delproc(BoardEntity entity, RedirectAttributes reAttr){
        int result = service.delBoard(entity);
        if(result ==0){
            reAttr.addFlashAttribute("msg","글 삭제에 실패하였습니다.");
            reAttr.addAttribute("iboard", entity.getIboard()); //쿼리스트링 iboard= pk값
            return "redirect:/board/detail";
        }
        return "redirect:/board/list";
    }
}