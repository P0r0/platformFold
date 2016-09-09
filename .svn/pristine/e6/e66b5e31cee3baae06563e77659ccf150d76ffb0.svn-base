.class public Lmobisocial/omlet/overlaybar/util/media/TrimVideoAsyncTask;
.super Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask;
.source "TrimVideoAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "TrimVideoTask"


# direct methods
.method public constructor <init>(Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;)V
    .registers 2
    .param p1, "callback"    # Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask;-><init>(Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;)V

    .line 23
    return-void
.end method


# virtual methods
.method public TrimVideo(Ljava/lang/String;JJ)Ljava/lang/String;
    .registers 46
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "startTimeUs"    # J
    .param p4, "endTimeUs"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    const/16 v27, 0x0

    .line 41
    .local v27, "sawEOS":Z
    const/high16 v5, 0x200000

    .line 42
    .local v5, "bufferSize":I
    const/4 v12, 0x0

    .line 43
    .local v12, "frameCount":I
    const/16 v23, 0x0

    .line 44
    .local v23, "offset":I
    const/4 v15, 0x0

    .line 45
    .local v15, "mediaExtractor":Landroid/media/MediaExtractor;
    const/16 v19, 0x0

    .line 46
    .local v19, "mediaMuxer":Landroid/media/MediaMuxer;
    const/16 v17, 0x0

    .line 47
    .local v17, "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    const/16 v25, 0x0

    .line 49
    .local v25, "outputFilePath":Ljava/lang/String;
    :try_start_e
    new-instance v16, Landroid/media/MediaExtractor;

    invoke-direct/range {v16 .. v16}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_255
    .catchall {:try_start_e .. :try_end_13} :catchall_249

    .line 50
    .end local v15    # "mediaExtractor":Landroid/media/MediaExtractor;
    .local v16, "mediaExtractor":Landroid/media/MediaExtractor;
    :try_start_13
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 51
    invoke-static/range {v16 .. v16}, Lmobisocial/omlet/overlaybar/util/media/MediaUtil;->selectVideoTrack(Landroid/media/MediaExtractor;)I

    move-result v32

    .line 52
    .local v32, "videoTrackIndex":I
    if-gez v32, :cond_41

    .line 53
    new-instance v33, Ljava/lang/RuntimeException;

    const-string v34, "No video track"

    invoke-direct/range {v33 .. v34}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v33
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_28} :catch_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_24b

    .line 116
    .end local v32    # "videoTrackIndex":I
    :catch_28
    move-exception v8

    move-object/from16 v15, v16

    .line 117
    .end local v16    # "mediaExtractor":Landroid/media/MediaExtractor;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v15    # "mediaExtractor":Landroid/media/MediaExtractor;
    :goto_2b
    :try_start_2b
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_249

    .line 119
    if-eqz v17, :cond_33

    .line 120
    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 122
    :cond_33
    if-eqz v19, :cond_3b

    .line 123
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaMuxer;->stop()V

    .line 124
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaMuxer;->release()V

    .line 126
    :cond_3b
    if-eqz v15, :cond_40

    .line 127
    invoke-virtual {v15}, Landroid/media/MediaExtractor;->release()V

    .line 130
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_40
    :goto_40
    return-object v25

    .line 55
    .end local v15    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v16    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v32    # "videoTrackIndex":I
    :cond_41
    :try_start_41
    new-instance v18, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v18 .. v18}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_46} :catch_28
    .catchall {:try_start_41 .. :try_end_46} :catchall_24b

    .line 56
    .end local v17    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .local v18, "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :try_start_46
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 57
    const/16 v33, 0x0

    const-string v34, "."

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v34

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 59
    .local v24, "oldFileName":Ljava/lang/String;
    new-instance v22, Ljava/io/File;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ".new.mp4"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v22, "modifiedVideoFile":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_8c

    .line 61
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 63
    :cond_8c
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v21

    .line 64
    .local v21, "modifiedFilePath":Ljava/lang/String;
    new-instance v20, Landroid/media/MediaMuxer;

    const/16 v33, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_9d} :catch_258
    .catchall {:try_start_46 .. :try_end_9d} :catchall_24f

    .line 65
    .end local v19    # "mediaMuxer":Landroid/media/MediaMuxer;
    .local v20, "mediaMuxer":Landroid/media/MediaMuxer;
    const/16 v33, 0x18

    :try_start_9f
    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v26

    .line 66
    .local v26, "rotationDegrees":Ljava/lang/String;
    if-eqz v26, :cond_ba

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->isEmpty()Z
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_ac} :catch_15c
    .catchall {:try_start_9f .. :try_end_ac} :catchall_22f

    move-result v33

    if-nez v33, :cond_ba

    .line 68
    :try_start_af
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_ba} :catch_25f
    .catchall {:try_start_af .. :try_end_ba} :catchall_22f

    .line 72
    :cond_ba
    :goto_ba
    :try_start_ba
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v30

    .line 73
    .local v30, "trackCount":I
    new-instance v14, Ljava/util/HashMap;

    move/from16 v0, v30

    invoke-direct {v14, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 74
    .local v14, "indexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_c6
    move/from16 v0, v30

    if-ge v13, v0, :cond_ed

    .line 75
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 76
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v9

    .line 77
    .local v9, "format":Landroid/media/MediaFormat;
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    .line 78
    .local v7, "dstIndex":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    add-int/lit8 v13, v13, 0x1

    goto :goto_c6

    .line 80
    .end local v7    # "dstIndex":I
    .end local v9    # "format":Landroid/media/MediaFormat;
    :cond_ed
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 81
    .local v6, "dstBuf":Ljava/nio/ByteBuffer;
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 82
    .local v4, "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaMuxer;->start()V

    .line 83
    const/16 v33, 0x1

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 85
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    .line 88
    .local v10, "firstSampleTimeUs":J
    move-wide/from16 v28, p4

    .line 89
    .local v28, "targetEndUs":J
    const-wide/32 v34, 0xf4240

    rem-long v34, p4, v34

    const-wide/32 v36, 0x186a0

    div-long v34, v34, v36

    const-wide/32 v36, 0xf4240

    rem-long v36, v10, v36

    const-wide/32 v38, 0x186a0

    div-long v36, v36, v38

    cmp-long v33, v34, v36

    if-nez v33, :cond_135

    .line 90
    const-wide/32 v34, 0x186a0

    rem-long v34, p4, v34

    const-wide/32 v36, 0x186a0

    rem-long v36, v10, v36

    cmp-long v33, v34, v36

    if-gez v33, :cond_135

    .line 91
    const-wide/32 v34, 0x186a0

    add-long v28, v28, v34

    .line 94
    :cond_135
    :goto_135
    if-nez v27, :cond_16d

    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/util/media/TrimVideoAsyncTask;->isCancelled()Z

    move-result v33

    if-nez v33, :cond_16d

    .line 95
    move/from16 v0, v23

    iput v0, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 96
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v33

    move/from16 v0, v33

    iput v0, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 97
    iget v0, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v33, v0

    if-gez v33, :cond_165

    .line 98
    const/16 v27, 0x1

    .line 99
    const/16 v33, 0x0

    move/from16 v0, v33

    iput v0, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_135

    .line 116
    .end local v4    # "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v6    # "dstBuf":Ljava/nio/ByteBuffer;
    .end local v10    # "firstSampleTimeUs":J
    .end local v13    # "i":I
    .end local v14    # "indexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v26    # "rotationDegrees":Ljava/lang/String;
    .end local v28    # "targetEndUs":J
    .end local v30    # "trackCount":I
    :catch_15c
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v17    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    move-object/from16 v19, v20

    .end local v20    # "mediaMuxer":Landroid/media/MediaMuxer;
    .restart local v19    # "mediaMuxer":Landroid/media/MediaMuxer;
    move-object/from16 v15, v16

    .end local v16    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v15    # "mediaExtractor":Landroid/media/MediaExtractor;
    goto/16 :goto_2b

    .line 101
    .end local v15    # "mediaExtractor":Landroid/media/MediaExtractor;
    .end local v17    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .end local v19    # "mediaMuxer":Landroid/media/MediaMuxer;
    .restart local v4    # "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v6    # "dstBuf":Ljava/nio/ByteBuffer;
    .restart local v10    # "firstSampleTimeUs":J
    .restart local v13    # "i":I
    .restart local v14    # "indexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v16    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v18    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v20    # "mediaMuxer":Landroid/media/MediaMuxer;
    .restart local v26    # "rotationDegrees":Ljava/lang/String;
    .restart local v28    # "targetEndUs":J
    .restart local v30    # "trackCount":I
    :cond_165
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaExtractor;->getSampleTime()J
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_168} :catch_15c
    .catchall {:try_start_ba .. :try_end_168} :catchall_22f

    move-result-wide v34

    cmp-long v33, v34, v28

    if-lez v33, :cond_189

    .line 115
    :cond_16d
    move-object/from16 v25, v21

    .line 119
    if-eqz v18, :cond_174

    .line 120
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 122
    :cond_174
    if-eqz v20, :cond_17c

    .line 123
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaMuxer;->stop()V

    .line 124
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaMuxer;->release()V

    .line 126
    :cond_17c
    if-eqz v16, :cond_262

    .line 127
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaExtractor;->release()V

    move-object/from16 v17, v18

    .end local v18    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v17    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    move-object/from16 v19, v20

    .end local v20    # "mediaMuxer":Landroid/media/MediaMuxer;
    .restart local v19    # "mediaMuxer":Landroid/media/MediaMuxer;
    move-object/from16 v15, v16

    .end local v16    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v15    # "mediaExtractor":Landroid/media/MediaExtractor;
    goto/16 :goto_40

    .line 104
    .end local v15    # "mediaExtractor":Landroid/media/MediaExtractor;
    .end local v17    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .end local v19    # "mediaMuxer":Landroid/media/MediaMuxer;
    .restart local v16    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v18    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v20    # "mediaMuxer":Landroid/media/MediaMuxer;
    :cond_189
    :try_start_189
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v34

    move-wide/from16 v0, v34

    iput-wide v0, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 105
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v33

    move/from16 v0, v33

    iput v0, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 106
    iget v0, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move/from16 v33, v0

    iget v0, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 107
    iget v0, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v31

    .line 109
    .local v31, "trackIndex":I
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1, v6, v4}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 110
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaExtractor;->advance()Z

    .line 111
    add-int/lit8 v12, v12, 0x1

    .line 112
    const-string v33, "TrimVideoTask"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Frame ("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ") "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "PresentationTimeUs:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-wide v0, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " Flags:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget v0, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " TrackIndex:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " Size(bytes) "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget v0, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_22d} :catch_15c
    .catchall {:try_start_189 .. :try_end_22d} :catchall_22f

    goto/16 :goto_135

    .line 119
    .end local v4    # "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v6    # "dstBuf":Ljava/nio/ByteBuffer;
    .end local v10    # "firstSampleTimeUs":J
    .end local v13    # "i":I
    .end local v14    # "indexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v26    # "rotationDegrees":Ljava/lang/String;
    .end local v28    # "targetEndUs":J
    .end local v30    # "trackCount":I
    .end local v31    # "trackIndex":I
    :catchall_22f
    move-exception v33

    move-object/from16 v17, v18

    .end local v18    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v17    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    move-object/from16 v19, v20

    .end local v20    # "mediaMuxer":Landroid/media/MediaMuxer;
    .restart local v19    # "mediaMuxer":Landroid/media/MediaMuxer;
    move-object/from16 v15, v16

    .end local v16    # "mediaExtractor":Landroid/media/MediaExtractor;
    .end local v21    # "modifiedFilePath":Ljava/lang/String;
    .end local v22    # "modifiedVideoFile":Ljava/io/File;
    .end local v24    # "oldFileName":Ljava/lang/String;
    .end local v32    # "videoTrackIndex":I
    .restart local v15    # "mediaExtractor":Landroid/media/MediaExtractor;
    :goto_236
    if-eqz v17, :cond_23b

    .line 120
    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 122
    :cond_23b
    if-eqz v19, :cond_243

    .line 123
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaMuxer;->stop()V

    .line 124
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaMuxer;->release()V

    .line 126
    :cond_243
    if-eqz v15, :cond_248

    .line 127
    invoke-virtual {v15}, Landroid/media/MediaExtractor;->release()V

    :cond_248
    throw v33

    .line 119
    :catchall_249
    move-exception v33

    goto :goto_236

    .end local v15    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v16    # "mediaExtractor":Landroid/media/MediaExtractor;
    :catchall_24b
    move-exception v33

    move-object/from16 v15, v16

    .end local v16    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v15    # "mediaExtractor":Landroid/media/MediaExtractor;
    goto :goto_236

    .end local v15    # "mediaExtractor":Landroid/media/MediaExtractor;
    .end local v17    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v16    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v18    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v32    # "videoTrackIndex":I
    :catchall_24f
    move-exception v33

    move-object/from16 v17, v18

    .end local v18    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v17    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    move-object/from16 v15, v16

    .end local v16    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v15    # "mediaExtractor":Landroid/media/MediaExtractor;
    goto :goto_236

    .line 116
    .end local v32    # "videoTrackIndex":I
    :catch_255
    move-exception v8

    goto/16 :goto_2b

    .end local v15    # "mediaExtractor":Landroid/media/MediaExtractor;
    .end local v17    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v16    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v18    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v32    # "videoTrackIndex":I
    :catch_258
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v17    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    move-object/from16 v15, v16

    .end local v16    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v15    # "mediaExtractor":Landroid/media/MediaExtractor;
    goto/16 :goto_2b

    .line 69
    .end local v15    # "mediaExtractor":Landroid/media/MediaExtractor;
    .end local v17    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .end local v19    # "mediaMuxer":Landroid/media/MediaMuxer;
    .restart local v16    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v18    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v20    # "mediaMuxer":Landroid/media/MediaMuxer;
    .restart local v21    # "modifiedFilePath":Ljava/lang/String;
    .restart local v22    # "modifiedVideoFile":Ljava/io/File;
    .restart local v24    # "oldFileName":Ljava/lang/String;
    .restart local v26    # "rotationDegrees":Ljava/lang/String;
    :catch_25f
    move-exception v33

    goto/16 :goto_ba

    .restart local v4    # "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v6    # "dstBuf":Ljava/nio/ByteBuffer;
    .restart local v10    # "firstSampleTimeUs":J
    .restart local v13    # "i":I
    .restart local v14    # "indexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v28    # "targetEndUs":J
    .restart local v30    # "trackCount":I
    :cond_262
    move-object/from16 v17, v18

    .end local v18    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v17    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    move-object/from16 v19, v20

    .end local v20    # "mediaMuxer":Landroid/media/MediaMuxer;
    .restart local v19    # "mediaMuxer":Landroid/media/MediaMuxer;
    move-object/from16 v15, v16

    .end local v16    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v15    # "mediaExtractor":Landroid/media/MediaExtractor;
    goto/16 :goto_40
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/util/media/TrimVideoAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .registers 11
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 27
    const/4 v7, 0x0

    .line 29
    .local v7, "outputFilePath":Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_2
    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/String;

    .line 30
    .local v1, "filePath":Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v8, p1, v0

    check-cast v8, Ljava/lang/Long;

    .line 31
    .local v8, "startTimeUs":Ljava/lang/Long;
    const/4 v0, 0x2

    aget-object v6, p1, v0

    check-cast v6, Ljava/lang/Long;

    .line 32
    .local v6, "endTimeUs":Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmobisocial/omlet/overlaybar/util/media/TrimVideoAsyncTask;->TrimVideo(Ljava/lang/String;JJ)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_1e

    move-result-object v7

    .line 35
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v6    # "endTimeUs":Ljava/lang/Long;
    .end local v8    # "startTimeUs":Ljava/lang/Long;
    :goto_1d
    return-object v7

    .line 33
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method
