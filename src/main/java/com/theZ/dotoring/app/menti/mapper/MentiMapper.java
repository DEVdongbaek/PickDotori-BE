package com.theZ.dotoring.app.menti.mapper;

import com.theZ.dotoring.app.menti.dto.FindAllMentiRespDTO;
import com.theZ.dotoring.app.menti.dto.FindMentiByIdRespDTO;
import com.theZ.dotoring.app.menti.dto.FindWaitMentiRespDTO;
import com.theZ.dotoring.app.menti.model.Menti;
import com.theZ.dotoring.app.mento.dto.FindWaitMentoRespDTO;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

@Component
public class MentiMapper {

    private static String url;

    @Value("${url}")
    public void setUrl(String url) {
        this.url = url;
    }

    public static FindAllMentiRespDTO fromCard(Menti menti){

        return FindAllMentiRespDTO.builder()
                .id(menti.getMentiId())
                .nickname(menti.getNickname())
                .preferredMentoringSystem(menti.getPreferredMentoring())
                .introduction(menti.getIntroduction())
                .profileImage(makeUrl(menti.getProfile().getProfilePath()))
                .majors(menti.getMemberMajors().stream().map(m -> m.getMajor().getMajorName()).collect(Collectors.toList()))
                .fields(menti.getDesiredFields().stream().map(desiredField -> desiredField.getField().getFieldName()).collect(Collectors.toList()))
                .build();
    }

    public static FindMentiByIdRespDTO fromDetail(Menti menti){
        FindMentiByIdRespDTO findMentiByIdRespDTO = FindMentiByIdRespDTO.builder()
                .mentiId(menti.getMentiId())
                .nickname(menti.getNickname())
                .preferredMentoring(menti.getPreferredMentoring())
                .introduction(menti.getIntroduction())
                .profileImage(makeUrl(menti.getProfile().getProfilePath()))
                .majors(menti.getMemberMajors().stream().map(m -> m.getMajor().getMajorName()).collect(Collectors.toList()))
                .fields(menti.getDesiredFields().stream().map(desiredField -> desiredField.getField().getFieldName()).collect(Collectors.toList()))
                .grade(menti.getGrade())
                .build();

        return findMentiByIdRespDTO;
    }
    public static List<FindAllMentiRespDTO> from(List<Menti> mentis){

        List<FindAllMentiRespDTO> findAllMentiRespDTOS = new ArrayList<>();

        IntStream.range(0, mentis.size())
                .forEach(i -> findAllMentiRespDTOS.add(
                        FindAllMentiRespDTO.builder()
                                .id(mentis.get(i).getMentiId())
                                .nickname(mentis.get(i).getNickname())
                                .preferredMentoringSystem(mentis.get(i).getPreferredMentoring())
                                .introduction(mentis.get(i).getIntroduction())
                                .profileImage(makeUrl(mentis.get(i).getProfile().getProfilePath()))
                                .majors(mentis.get(i).getMemberMajors().stream().map(m -> m.getMajor().getMajorName()).collect(Collectors.toList()))
                                .fields(mentis.get(i).getDesiredFields().stream().map(desiredField -> desiredField.getField().getFieldName()).collect(Collectors.toList()))
                                .build())
                );
        return findAllMentiRespDTOS;
    }

    public static Page<FindWaitMentiRespDTO> fromWaitMenti(Page<Menti> pagingMenti) {

        List<FindWaitMentiRespDTO> findWaitMentiRespDTOS = new ArrayList<>();

        IntStream.range(0,pagingMenti.getContent().size())
                .forEach(i -> findWaitMentiRespDTOS.add(
                        FindWaitMentiRespDTO.builder()
                                .nickname(pagingMenti.getContent().get(i).getNickname())
                                .grade(pagingMenti.getContent().get(i).getGrade())
                                .school(pagingMenti.getContent().get(i).getSchool())
                                .build()
                ));

        Page<FindWaitMentiRespDTO> findWaitMentiPagindRespDTOS = new PageImpl<>(findWaitMentiRespDTOS,pagingMenti.getPageable(),pagingMenti.getTotalPages());
        return findWaitMentiPagindRespDTOS;
    }

    private static String makeUrl(String imageUri) {
        return url + imageUri;
    }
}
