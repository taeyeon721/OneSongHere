import React, { useState, useEffect } from 'react';
import AlbumCard from 'components/molecules/albumcard/AlbumCard';
import Button from 'components/atoms/buttons/Button';
import SearchBar from 'components/molecules/searchsection/SearchBar';
import HallOfFameBG from 'components/atoms/halloffame/HallOfFameBG';
import SectionTitle from 'components/atoms/common/SectionTitle';
import './Albums.scss';
import { getAlbums } from 'services/album';
import Album from 'types/Album';

const Albums = () => {
  // useState에 제네릭으로 number만 넣을 수 있도록 타입을 제한함
  const [width, setWidth] = useState<number>(window.innerWidth);
  const handleResize = () => {
    setWidth(window.innerWidth);
  };
  useEffect(() => {
    window.addEventListener('resize', handleResize);
    return () => {
      window.removeEventListener('resize', handleResize);
    };
  }, []);

  const [albumlist, getAlbumList] = useState<Album[]>([
    {
      albumTitle: '',
      albumContent: '',
      likes: 0,
      albumUrl: '',
      userId: 0,
      nickName: '',
      userLike: false,
      genre: '',
      albumId: 0,
    },
  ]);
  const getAlbumData = () => {
    getAlbums(
      ({ data }) => {
        console.log(data);
        getAlbumList(data);
      },
      (error) => {
        console.log(error);
      }
    );
  };
  useEffect(() => {
    getAlbumData();
  }, []);

  return (
    <div className="album__container">
      <div
        className="halloffame__container"
        style={{ width: `${width >= 600 ? '50vw' : '80vw'}` }}
      >
        <SectionTitle title="명예의 전당" />
      </div>
      <HallOfFameBG
        imgPath="https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F19%2F2018%2F02%2F13%2Ffield-image-ham-slices-hero-2000.jpg&q=60"
        albumTitle="햄을 칼로 삭삭삭"
        albumStudio="정육점"
      />
      {/* 생성날짜가 이번 달이고, 하트 개수가 가장 많은 앨범 세 개를 골라서 캐러셀으로 출력(자동전환) */}
      <SearchBar />
      <div>
        <Button
          tag={false}
          label="일반"
          color="primary"
          shadow={false}
          type="button"
        />
        <Button
          tag={false}
          label="릴레이"
          color="other"
          shadow={false}
          type="button"
        />
      </div>
      <ul>
        {albumlist.map((album) => (
          <li key={album.albumId}>
            <AlbumCard
              imgPath={album.albumUrl}
              albumTitle={album.albumTitle}
              albumStudio={album.nickName}
              like={album.userLike}
              tag={album.genre}
              albumInfo={album.albumContent}
            />
          </li>
        ))}
      </ul>
    </div>
  );
};

export default Albums;
