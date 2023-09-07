package com.theZ.dotoring.app.room.repository;

import com.theZ.dotoring.app.room.domain.Room;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

/**
 * DB로부터 Room 테이블에 대해서 질의를 통해 데이터를 가져옵니다.
 *
 * @author Kevin
 * @version 1.0
 */
@Repository
public interface RoomRepository extends JpaRepository<Room, Long> {

    Optional<List<Room>> findAllByWriterNameOrReceiverName(String writerName, String receiverName);

    Optional<Room> findByWriterNameAndReceiverName(String writerName, String receiverName);

//    @Query("select r from Room r join fetch r.letterList where r.receiver = :receiver and  r.writer = :writer")
//    Optional<Room> findByWriterAndReceiver1(@Param("writer")Member writer, @Param("receiver")Member receiver);
}
