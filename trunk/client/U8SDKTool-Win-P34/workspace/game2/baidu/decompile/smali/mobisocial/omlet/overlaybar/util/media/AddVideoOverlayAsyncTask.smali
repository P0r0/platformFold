.class public Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;
.super Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask;
.source "AddVideoOverlayAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final FRAME_RATE:I = 0xf

.field private static final IFRAME_INTERVAL:I = 0xa

.field static final TAG:Ljava/lang/String; = "AddVideoOverlay"

.field private static final TIMEOUT_USEC:I = 0x2710

.field static final VERBOSE:Ljava/lang/Boolean;


# instance fields
.field _callback:Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;

.field _context:Landroid/content/Context;

.field private mBitRate:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->VERBOSE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;Landroid/content/Context;)V
    .registers 4
    .param p1, "callback"    # Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask;-><init>(Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;)V

    .line 48
    const v0, 0x1e8480

    iput v0, p0, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->mBitRate:I

    .line 32
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->_context:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public AddImageOverlay(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 53
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "overlayBitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 61
    const/16 v41, 0x0

    .line 62
    .local v41, "outputFilePath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 63
    .local v4, "decoder":Landroid/media/MediaCodec;
    const/16 v20, 0x0

    .line 64
    .local v20, "encoder":Landroid/media/MediaCodec;
    const/16 v25, 0x0

    .line 65
    .local v25, "extractor":Landroid/media/MediaExtractor;
    const/16 v35, 0x0

    .line 71
    .local v35, "muxer":Landroid/media/MediaMuxer;
    :try_start_9
    new-instance v26, Landroid/media/MediaExtractor;

    invoke-direct/range {v26 .. v26}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_48c
    .catchall {:try_start_9 .. :try_end_e} :catchall_484

    .line 72
    .end local v25    # "extractor":Landroid/media/MediaExtractor;
    .local v26, "extractor":Landroid/media/MediaExtractor;
    :try_start_e
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 73
    invoke-static/range {v26 .. v26}, Lmobisocial/omlet/overlaybar/util/media/MediaUtil;->selectVideoTrack(Landroid/media/MediaExtractor;)I

    move-result v45

    .line 74
    .local v45, "videoTrackIndex":I
    if-gez v45, :cond_48

    .line 75
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v8, "No video track"

    invoke-direct {v6, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_23} :catch_23
    .catchall {:try_start_e .. :try_end_23} :catchall_487

    .line 270
    .end local v45    # "videoTrackIndex":I
    :catch_23
    move-exception v18

    move-object/from16 v25, v26

    .line 271
    .end local v26    # "extractor":Landroid/media/MediaExtractor;
    .local v18, "e":Ljava/lang/Exception;
    .restart local v25    # "extractor":Landroid/media/MediaExtractor;
    :goto_26
    :try_start_26
    const-string v6, "AddVideoOverlay"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_484

    .line 273
    if-eqz v4, :cond_37

    .line 274
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 275
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 277
    :cond_37
    if-eqz v20, :cond_3f

    .line 278
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->stop()V

    .line 279
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->release()V

    .line 281
    :cond_3f
    if-eqz v35, :cond_47

    .line 282
    invoke-virtual/range {v35 .. v35}, Landroid/media/MediaMuxer;->stop()V

    .line 283
    invoke-virtual/range {v35 .. v35}, Landroid/media/MediaMuxer;->release()V

    .line 286
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_47
    :goto_47
    return-object v41

    .line 77
    .end local v25    # "extractor":Landroid/media/MediaExtractor;
    .restart local v26    # "extractor":Landroid/media/MediaExtractor;
    .restart local v45    # "videoTrackIndex":I
    :cond_48
    :try_start_48
    move-object/from16 v0, v26

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 78
    new-instance v32, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v32 .. v32}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 79
    .local v32, "metadataRetriever":Landroid/media/MediaMetadataRetriever;
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 80
    const/4 v6, 0x0

    const-string v8, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    .line 82
    .local v39, "oldFileName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".new.mp4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v34

    .line 83
    .local v34, "modifiedFilePath":Ljava/lang/String;
    move-object/from16 v41, v34

    .line 84
    new-instance v36, Landroid/media/MediaMuxer;

    const/4 v6, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v6}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_94} :catch_23
    .catchall {:try_start_48 .. :try_end_94} :catchall_487

    .line 85
    .end local v35    # "muxer":Landroid/media/MediaMuxer;
    .local v36, "muxer":Landroid/media/MediaMuxer;
    const/16 v6, 0x18

    :try_start_96
    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v44

    .line 86
    .local v44, "rotationDegrees":Ljava/lang/String;
    if-eqz v44, :cond_ad

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->isEmpty()Z
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a1} :catch_227
    .catchall {:try_start_96 .. :try_end_a1} :catchall_23f

    move-result v6

    if-nez v6, :cond_ad

    .line 88
    :try_start_a4
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Landroid/media/MediaMuxer;->setOrientationHint(I)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ad} :catch_48f
    .catchall {:try_start_a4 .. :try_end_ad} :catchall_23f

    .line 92
    :cond_ad
    :goto_ad
    :try_start_ad
    move-object/from16 v0, v26

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v30

    .line 93
    .local v30, "inputFormat":Landroid/media/MediaFormat;
    const-string v6, "mime"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 95
    .local v33, "mime":Ljava/lang/String;
    const-string v6, "video/avc"

    invoke-static {v6}, Lmobisocial/omlet/overlaybar/util/media/MediaUtil;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v12

    .line 97
    .local v12, "codecInfo":Landroid/media/MediaCodecInfo;
    const/16 v6, 0x280

    const/16 v8, 0x180

    move-object/from16 v0, v33

    invoke-static {v0, v6, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v42

    .line 98
    .local v42, "outputFormat":Landroid/media/MediaFormat;
    const-string v6, "color-format"

    const v8, 0x7f000789

    move-object/from16 v0, v42

    invoke-virtual {v0, v6, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 99
    const-string v6, "bitrate"

    move-object/from16 v0, p0

    iget v8, v0, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->mBitRate:I

    move-object/from16 v0, v42

    invoke-virtual {v0, v6, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 100
    const-string v6, "frame-rate"

    const/16 v8, 0xf

    move-object/from16 v0, v42

    invoke-virtual {v0, v6, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 101
    const-string v6, "i-frame-interval"

    const/16 v8, 0xa

    move-object/from16 v0, v42

    invoke-virtual {v0, v6, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {v12}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v20

    .line 104
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v6, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 105
    new-instance v31, Lmobisocial/omlet/overlaybar/util/media/InputSurface;

    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-direct {v0, v6}, Lmobisocial/omlet/overlaybar/util/media/InputSurface;-><init>(Landroid/view/Surface;)V

    .line 106
    .local v31, "inputSurface":Lmobisocial/omlet/overlaybar/util/media/InputSurface;
    invoke-virtual/range {v31 .. v31}, Lmobisocial/omlet/overlaybar/util/media/InputSurface;->makeCurrent()V

    .line 107
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->start()V

    .line 109
    invoke-static/range {v33 .. v33}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    .line 110
    new-instance v43, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;

    move-object/from16 v0, v43

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;-><init>(Landroid/graphics/Bitmap;)V

    .line 111
    .local v43, "outputSurface":Lmobisocial/omlet/overlaybar/util/media/OutputSurface;
    invoke-virtual/range {v43 .. v43}, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v4, v0, v6, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 112
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 114
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 115
    .local v14, "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v22

    .line 116
    .local v22, "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    new-instance v27, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v27 .. v27}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 117
    .local v27, "info":Landroid/media/MediaCodec$BufferInfo;
    const/16 v40, 0x0

    .line 118
    .local v40, "outputDone":Z
    const/16 v29, 0x0

    .line 119
    .local v29, "inputDone":Z
    const/4 v13, 0x0

    .line 120
    .local v13, "decoderDone":Z
    const/16 v37, 0x0

    .line 121
    .local v37, "muxerStarted":Z
    :cond_146
    if-nez v40, :cond_466

    if-nez v29, :cond_466

    .line 123
    sget-object v6, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->VERBOSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_159

    .line 124
    const-string v6, "AddVideoOverlay"

    const-string v8, "edit loop"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_159
    if-nez v29, :cond_146

    .line 127
    const-wide/16 v8, 0x2710

    invoke-virtual {v4, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 128
    .local v5, "inputBufIndex":I
    if-ltz v5, :cond_22e

    .line 129
    aget-object v11, v14, v5

    .line 130
    .local v11, "buffer":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 131
    .local v7, "sampleSize":I
    if-gez v7, :cond_1e6

    .line 133
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 134
    .end local v7    # "sampleSize":I
    const/16 v29, 0x1

    .line 136
    sget-object v6, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->VERBOSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_187

    .line 137
    const-string v6, "AddVideoOverlay"

    const-string v8, "sent input EOS (with zero-length frame)"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_187
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 153
    .end local v11    # "buffer":Ljava/nio/ByteBuffer;
    :cond_198
    :goto_198
    if-nez v13, :cond_25d

    const/4 v15, 0x1

    .line 154
    .local v15, "decoderOutputAvailable":Z
    :goto_19b
    const/16 v21, 0x1

    .line 155
    .local v21, "encoderOutputAvailable":Z
    :cond_19d
    :goto_19d
    if-nez v15, :cond_1a1

    if-eqz v21, :cond_146

    .line 158
    :cond_1a1
    const-wide/16 v8, 0x2710

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v24

    .line 159
    .local v24, "encoderStatus":I
    const/4 v6, -0x1

    move/from16 v0, v24

    if-ne v0, v6, :cond_260

    .line 161
    sget-object v6, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->VERBOSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1bf

    .line 162
    const-string v6, "AddVideoOverlay"

    const-string v8, "no output from encoder available"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1bf
    const/16 v21, 0x0

    .line 206
    :cond_1c1
    :goto_1c1
    const/4 v6, -0x1

    move/from16 v0, v24

    if-ne v0, v6, :cond_19d

    .line 211
    if-nez v13, :cond_19d

    .line 212
    const-wide/16 v8, 0x2710

    move-object/from16 v0, v27

    invoke-virtual {v4, v0, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v16

    .line 213
    .local v16, "decoderStatus":I
    const/4 v6, -0x1

    move/from16 v0, v16

    if-ne v0, v6, :cond_36e

    .line 215
    sget-object v6, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->VERBOSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1e4

    .line 216
    const-string v6, "AddVideoOverlay"

    const-string v8, "no output from decoder available"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1e4
    const/4 v15, 0x0

    goto :goto_19d

    .line 142
    .end local v15    # "decoderOutputAvailable":Z
    .end local v16    # "decoderStatus":I
    .end local v21    # "encoderOutputAvailable":Z
    .end local v24    # "encoderStatus":I
    .restart local v7    # "sampleSize":I
    .restart local v11    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1e6
    aget-object v28, v14, v5

    .line 143
    .local v28, "inputBuf":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 144
    const/4 v6, 0x0

    invoke-virtual/range {v26 .. v26}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 145
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-virtual/range {v26 .. v26}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v46

    move-wide/from16 v0, v46

    long-to-double v0, v0

    move-wide/from16 v46, v0

    const-string v9, "durationUs"

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v48

    move-wide/from16 v0, v48

    long-to-double v0, v0

    move-wide/from16 v48, v0

    div-double v46, v46, v48

    const-wide/high16 v48, 0x4059000000000000L    # 100.0

    mul-double v46, v46, v48

    move-wide/from16 v0, v46

    double-to-int v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 146
    invoke-virtual/range {v26 .. v26}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_198

    .line 270
    .end local v5    # "inputBufIndex":I
    .end local v7    # "sampleSize":I
    .end local v11    # "buffer":Ljava/nio/ByteBuffer;
    .end local v12    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v13    # "decoderDone":Z
    .end local v14    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v22    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v27    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v28    # "inputBuf":Ljava/nio/ByteBuffer;
    .end local v29    # "inputDone":Z
    .end local v30    # "inputFormat":Landroid/media/MediaFormat;
    .end local v31    # "inputSurface":Lmobisocial/omlet/overlaybar/util/media/InputSurface;
    .end local v33    # "mime":Ljava/lang/String;
    .end local v37    # "muxerStarted":Z
    .end local v40    # "outputDone":Z
    .end local v42    # "outputFormat":Landroid/media/MediaFormat;
    .end local v43    # "outputSurface":Lmobisocial/omlet/overlaybar/util/media/OutputSurface;
    .end local v44    # "rotationDegrees":Ljava/lang/String;
    :catch_227
    move-exception v18

    move-object/from16 v35, v36

    .end local v36    # "muxer":Landroid/media/MediaMuxer;
    .restart local v35    # "muxer":Landroid/media/MediaMuxer;
    move-object/from16 v25, v26

    .end local v26    # "extractor":Landroid/media/MediaExtractor;
    .restart local v25    # "extractor":Landroid/media/MediaExtractor;
    goto/16 :goto_26

    .line 150
    .end local v25    # "extractor":Landroid/media/MediaExtractor;
    .end local v35    # "muxer":Landroid/media/MediaMuxer;
    .restart local v5    # "inputBufIndex":I
    .restart local v12    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v13    # "decoderDone":Z
    .restart local v14    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v22    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v26    # "extractor":Landroid/media/MediaExtractor;
    .restart local v27    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v29    # "inputDone":Z
    .restart local v30    # "inputFormat":Landroid/media/MediaFormat;
    .restart local v31    # "inputSurface":Lmobisocial/omlet/overlaybar/util/media/InputSurface;
    .restart local v33    # "mime":Ljava/lang/String;
    .restart local v36    # "muxer":Landroid/media/MediaMuxer;
    .restart local v37    # "muxerStarted":Z
    .restart local v40    # "outputDone":Z
    .restart local v42    # "outputFormat":Landroid/media/MediaFormat;
    .restart local v43    # "outputSurface":Lmobisocial/omlet/overlaybar/util/media/OutputSurface;
    .restart local v44    # "rotationDegrees":Ljava/lang/String;
    :cond_22e
    sget-object v6, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->VERBOSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_198

    .line 151
    const-string v6, "AddVideoOverlay"

    const-string v8, "input buffer not available"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_23d} :catch_227
    .catchall {:try_start_ad .. :try_end_23d} :catchall_23f

    goto/16 :goto_198

    .line 273
    .end local v5    # "inputBufIndex":I
    .end local v12    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v13    # "decoderDone":Z
    .end local v14    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v22    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v27    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v29    # "inputDone":Z
    .end local v30    # "inputFormat":Landroid/media/MediaFormat;
    .end local v31    # "inputSurface":Lmobisocial/omlet/overlaybar/util/media/InputSurface;
    .end local v33    # "mime":Ljava/lang/String;
    .end local v37    # "muxerStarted":Z
    .end local v40    # "outputDone":Z
    .end local v42    # "outputFormat":Landroid/media/MediaFormat;
    .end local v43    # "outputSurface":Lmobisocial/omlet/overlaybar/util/media/OutputSurface;
    .end local v44    # "rotationDegrees":Ljava/lang/String;
    :catchall_23f
    move-exception v6

    move-object/from16 v35, v36

    .end local v36    # "muxer":Landroid/media/MediaMuxer;
    .restart local v35    # "muxer":Landroid/media/MediaMuxer;
    move-object/from16 v25, v26

    .end local v26    # "extractor":Landroid/media/MediaExtractor;
    .end local v32    # "metadataRetriever":Landroid/media/MediaMetadataRetriever;
    .end local v34    # "modifiedFilePath":Ljava/lang/String;
    .end local v39    # "oldFileName":Ljava/lang/String;
    .end local v45    # "videoTrackIndex":I
    .restart local v25    # "extractor":Landroid/media/MediaExtractor;
    :goto_244
    if-eqz v4, :cond_24c

    .line 274
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 275
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 277
    :cond_24c
    if-eqz v20, :cond_254

    .line 278
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->stop()V

    .line 279
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->release()V

    .line 281
    :cond_254
    if-eqz v35, :cond_25c

    .line 282
    invoke-virtual/range {v35 .. v35}, Landroid/media/MediaMuxer;->stop()V

    .line 283
    invoke-virtual/range {v35 .. v35}, Landroid/media/MediaMuxer;->release()V

    :cond_25c
    throw v6

    .line 153
    .end local v25    # "extractor":Landroid/media/MediaExtractor;
    .end local v35    # "muxer":Landroid/media/MediaMuxer;
    .restart local v5    # "inputBufIndex":I
    .restart local v12    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v13    # "decoderDone":Z
    .restart local v14    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v22    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v26    # "extractor":Landroid/media/MediaExtractor;
    .restart local v27    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v29    # "inputDone":Z
    .restart local v30    # "inputFormat":Landroid/media/MediaFormat;
    .restart local v31    # "inputSurface":Lmobisocial/omlet/overlaybar/util/media/InputSurface;
    .restart local v32    # "metadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v33    # "mime":Ljava/lang/String;
    .restart local v34    # "modifiedFilePath":Ljava/lang/String;
    .restart local v36    # "muxer":Landroid/media/MediaMuxer;
    .restart local v37    # "muxerStarted":Z
    .restart local v39    # "oldFileName":Ljava/lang/String;
    .restart local v40    # "outputDone":Z
    .restart local v42    # "outputFormat":Landroid/media/MediaFormat;
    .restart local v43    # "outputSurface":Lmobisocial/omlet/overlaybar/util/media/OutputSurface;
    .restart local v44    # "rotationDegrees":Ljava/lang/String;
    .restart local v45    # "videoTrackIndex":I
    :cond_25d
    const/4 v15, 0x0

    goto/16 :goto_19b

    .line 164
    .restart local v15    # "decoderOutputAvailable":Z
    .restart local v21    # "encoderOutputAvailable":Z
    .restart local v24    # "encoderStatus":I
    :cond_260
    const/4 v6, -0x3

    move/from16 v0, v24

    if-ne v0, v6, :cond_27a

    .line 165
    :try_start_265
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v22

    .line 167
    sget-object v6, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->VERBOSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1c1

    .line 168
    const-string v6, "AddVideoOverlay"

    const-string v8, "encoder output buffers changed"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c1

    .line 169
    :cond_27a
    const/4 v6, -0x2

    move/from16 v0, v24

    if-ne v0, v6, :cond_2a7

    .line 170
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v38

    .line 172
    .local v38, "newFormat":Landroid/media/MediaFormat;
    sget-object v6, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->VERBOSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1c1

    .line 173
    const-string v6, "AddVideoOverlay"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encoder output format changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c1

    .line 174
    .end local v38    # "newFormat":Landroid/media/MediaFormat;
    :cond_2a7
    if-gez v24, :cond_2c5

    .line 176
    const-string v6, "AddVideoOverlay"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c1

    .line 179
    :cond_2c5
    aget-object v19, v22, v24

    .line 180
    .local v19, "encodedData":Ljava/nio/ByteBuffer;
    if-nez v19, :cond_2e9

    .line 182
    const-string v6, "AddVideoOverlay"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encoderOutputBuffer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " was null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2e9
    move-object/from16 v0, v27

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_330

    .line 186
    move-object/from16 v0, v27

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 187
    move-object/from16 v0, v27

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v27

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v6, v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 189
    sget-object v6, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->VERBOSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_330

    .line 190
    const-string v6, "AddVideoOverlay"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encoder output "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v27

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_330
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v23

    .line 193
    .local v23, "encoderOutputFormat":Landroid/media/MediaFormat;
    if-nez v37, :cond_342

    .line 194
    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    .line 195
    invoke-virtual/range {v36 .. v36}, Landroid/media/MediaMuxer;->start()V
    :try_end_340
    .catch Ljava/lang/Exception; {:try_start_265 .. :try_end_340} :catch_227
    .catchall {:try_start_265 .. :try_end_340} :catchall_23f

    .line 196
    const/16 v37, 0x1

    .line 199
    :cond_342
    const/4 v6, 0x0

    :try_start_343
    move-object/from16 v0, v36

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-virtual {v0, v6, v1, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_34c
    .catch Ljava/lang/Exception; {:try_start_343 .. :try_end_34c} :catch_360
    .catchall {:try_start_343 .. :try_end_34c} :catchall_23f

    .line 203
    :goto_34c
    :try_start_34c
    move-object/from16 v0, v27

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_36b

    const/16 v40, 0x1

    .line 204
    :goto_356
    const/4 v6, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_1c1

    .line 200
    :catch_360
    move-exception v18

    .line 201
    .restart local v18    # "e":Ljava/lang/Exception;
    const-string v6, "AddVideoOverlay"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34c

    .line 203
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_36b
    const/16 v40, 0x0

    goto :goto_356

    .line 218
    .end local v19    # "encodedData":Ljava/nio/ByteBuffer;
    .end local v23    # "encoderOutputFormat":Landroid/media/MediaFormat;
    .restart local v16    # "decoderStatus":I
    :cond_36e
    const/4 v6, -0x3

    move/from16 v0, v16

    if-ne v0, v6, :cond_384

    .line 220
    sget-object v6, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->VERBOSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_19d

    .line 222
    const-string v6, "AddVideoOverlay"

    const-string v8, "decoder output buffers changed (we don\'t care)"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19d

    .line 223
    :cond_384
    const/4 v6, -0x2

    move/from16 v0, v16

    if-ne v0, v6, :cond_3b1

    .line 225
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v38

    .line 226
    .restart local v38    # "newFormat":Landroid/media/MediaFormat;
    sget-object v6, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->VERBOSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_19d

    .line 228
    const-string v6, "AddVideoOverlay"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decoder output format changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19d

    .line 229
    .end local v38    # "newFormat":Landroid/media/MediaFormat;
    :cond_3b1
    if-gez v16, :cond_3cf

    .line 231
    const-string v6, "AddVideoOverlay"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19d

    .line 234
    :cond_3cf
    sget-object v6, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->VERBOSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_405

    .line 235
    const-string v6, "AddVideoOverlay"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "surface decoder given buffer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v27

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_405
    move-object/from16 v0, v27

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_463

    const/16 v17, 0x1

    .line 246
    .local v17, "doRender":Z
    :goto_40d
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 247
    if-eqz v17, :cond_44a

    .line 249
    sget-object v6, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->VERBOSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_425

    .line 250
    const-string v6, "AddVideoOverlay"

    const-string v8, "awaiting frame"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_425
    invoke-virtual/range {v43 .. v43}, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->awaitNewImage()V

    .line 252
    invoke-virtual/range {v43 .. v43}, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->drawImage()V

    .line 254
    move-object/from16 v0, v27

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v46, 0x3e8

    mul-long v8, v8, v46

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Lmobisocial/omlet/overlaybar/util/media/InputSurface;->setPresentationTime(J)V

    .line 256
    sget-object v6, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->VERBOSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_447

    .line 257
    const-string v6, "AddVideoOverlay"

    const-string v8, "swapBuffers"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_447
    invoke-virtual/range {v31 .. v31}, Lmobisocial/omlet/overlaybar/util/media/InputSurface;->swapBuffers()Z

    .line 260
    :cond_44a
    move-object/from16 v0, v27

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_19d

    .line 262
    sget-object v6, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->VERBOSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_19d

    .line 263
    const-string v6, "AddVideoOverlay"

    const-string v8, "signaling input EOS"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_461
    .catch Ljava/lang/Exception; {:try_start_34c .. :try_end_461} :catch_227
    .catchall {:try_start_34c .. :try_end_461} :catchall_23f

    goto/16 :goto_19d

    .line 240
    .end local v17    # "doRender":Z
    :cond_463
    const/16 v17, 0x0

    goto :goto_40d

    .line 273
    .end local v5    # "inputBufIndex":I
    .end local v15    # "decoderOutputAvailable":Z
    .end local v16    # "decoderStatus":I
    .end local v21    # "encoderOutputAvailable":Z
    .end local v24    # "encoderStatus":I
    :cond_466
    if-eqz v4, :cond_46e

    .line 274
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 275
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 277
    :cond_46e
    if-eqz v20, :cond_476

    .line 278
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->stop()V

    .line 279
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodec;->release()V

    .line 281
    :cond_476
    if-eqz v36, :cond_492

    .line 282
    invoke-virtual/range {v36 .. v36}, Landroid/media/MediaMuxer;->stop()V

    .line 283
    invoke-virtual/range {v36 .. v36}, Landroid/media/MediaMuxer;->release()V

    move-object/from16 v35, v36

    .end local v36    # "muxer":Landroid/media/MediaMuxer;
    .restart local v35    # "muxer":Landroid/media/MediaMuxer;
    move-object/from16 v25, v26

    .end local v26    # "extractor":Landroid/media/MediaExtractor;
    .restart local v25    # "extractor":Landroid/media/MediaExtractor;
    goto/16 :goto_47

    .line 273
    .end local v12    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v13    # "decoderDone":Z
    .end local v14    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v22    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v27    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v29    # "inputDone":Z
    .end local v30    # "inputFormat":Landroid/media/MediaFormat;
    .end local v31    # "inputSurface":Lmobisocial/omlet/overlaybar/util/media/InputSurface;
    .end local v32    # "metadataRetriever":Landroid/media/MediaMetadataRetriever;
    .end local v33    # "mime":Ljava/lang/String;
    .end local v34    # "modifiedFilePath":Ljava/lang/String;
    .end local v37    # "muxerStarted":Z
    .end local v39    # "oldFileName":Ljava/lang/String;
    .end local v40    # "outputDone":Z
    .end local v42    # "outputFormat":Landroid/media/MediaFormat;
    .end local v43    # "outputSurface":Lmobisocial/omlet/overlaybar/util/media/OutputSurface;
    .end local v44    # "rotationDegrees":Ljava/lang/String;
    .end local v45    # "videoTrackIndex":I
    :catchall_484
    move-exception v6

    goto/16 :goto_244

    .end local v25    # "extractor":Landroid/media/MediaExtractor;
    .restart local v26    # "extractor":Landroid/media/MediaExtractor;
    :catchall_487
    move-exception v6

    move-object/from16 v25, v26

    .end local v26    # "extractor":Landroid/media/MediaExtractor;
    .restart local v25    # "extractor":Landroid/media/MediaExtractor;
    goto/16 :goto_244

    .line 270
    :catch_48c
    move-exception v18

    goto/16 :goto_26

    .line 89
    .end local v25    # "extractor":Landroid/media/MediaExtractor;
    .end local v35    # "muxer":Landroid/media/MediaMuxer;
    .restart local v26    # "extractor":Landroid/media/MediaExtractor;
    .restart local v32    # "metadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v34    # "modifiedFilePath":Ljava/lang/String;
    .restart local v36    # "muxer":Landroid/media/MediaMuxer;
    .restart local v39    # "oldFileName":Ljava/lang/String;
    .restart local v44    # "rotationDegrees":Ljava/lang/String;
    .restart local v45    # "videoTrackIndex":I
    :catch_48f
    move-exception v6

    goto/16 :goto_ad

    .restart local v12    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v13    # "decoderDone":Z
    .restart local v14    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v22    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v27    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v29    # "inputDone":Z
    .restart local v30    # "inputFormat":Landroid/media/MediaFormat;
    .restart local v31    # "inputSurface":Lmobisocial/omlet/overlaybar/util/media/InputSurface;
    .restart local v33    # "mime":Ljava/lang/String;
    .restart local v37    # "muxerStarted":Z
    .restart local v40    # "outputDone":Z
    .restart local v42    # "outputFormat":Landroid/media/MediaFormat;
    .restart local v43    # "outputSurface":Lmobisocial/omlet/overlaybar/util/media/OutputSurface;
    :cond_492
    move-object/from16 v35, v36

    .end local v36    # "muxer":Landroid/media/MediaMuxer;
    .restart local v35    # "muxer":Landroid/media/MediaMuxer;
    move-object/from16 v25, v26

    .end local v26    # "extractor":Landroid/media/MediaExtractor;
    .restart local v25    # "extractor":Landroid/media/MediaExtractor;
    goto/16 :goto_47
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 37
    const/4 v2, 0x0

    .line 39
    .local v2, "outputFilePath":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_2
    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/String;

    .line 40
    .local v1, "filePath":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v3, p1, v4

    check-cast v3, Landroid/graphics/Bitmap;

    .line 41
    .local v3, "overlayBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v1, v3}, Lmobisocial/omlet/overlaybar/util/media/AddVideoOverlayAsyncTask;->AddImageOverlay(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_10

    move-result-object v2

    .line 45
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v3    # "overlayBitmap":Landroid/graphics/Bitmap;
    :goto_f
    return-object v2

    .line 42
    :catch_10
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "AddVideoOverlay"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
