.class public Lmobisocial/omlet/overlaybar/util/media/MediaUtil;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 9
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 98
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 99
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 100
    .local v4, "width":I
    const/4 v3, 0x1

    .line 101
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_9

    if-le v4, p1, :cond_18

    .line 102
    :cond_9
    div-int/lit8 v0, v2, 0x2

    .line 103
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 105
    .local v1, "halfWidth":I
    :goto_d
    div-int v5, v0, v3

    if-le v5, p2, :cond_18

    div-int v5, v1, v3

    if-le v5, p1, :cond_18

    .line 106
    mul-int/lit8 v3, v3, 0x2

    goto :goto_d

    .line 109
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_18
    return v3
.end method

.method private static copyMediaToPublicDir(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoPath"    # Ljava/lang/String;
    .param p2, "mediaStorageDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_14

    .line 168
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_14

    .line 169
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot create folder to save file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_14
    const/4 v1, 0x0

    .line 173
    .local v1, "sourceChannel":Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 177
    .local v0, "destinationChannel":Ljava/nio/channels/FileChannel;
    :try_start_16
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v9, "sourceFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v6, "destinationFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_61

    .line 180
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_61

    .line 181
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot create folder to save file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_53} :catch_53
    .catchall {:try_start_16 .. :try_end_53} :catchall_55

    .line 191
    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v9    # "sourceFile":Ljava/io/File;
    :catch_53
    move-exception v7

    .line 192
    .local v7, "e":Ljava/io/IOException;
    :try_start_54
    throw v7
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    .line 194
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_55
    move-exception v2

    if-eqz v1, :cond_5b

    .line 195
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 197
    :cond_5b
    if-eqz v0, :cond_60

    .line 198
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_60
    throw v2

    .line 184
    .restart local v6    # "destinationFile":Ljava/io/File;
    .restart local v9    # "sourceFile":Ljava/io/File;
    :cond_61
    :try_start_61
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 185
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 186
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 187
    new-instance v8, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v8, "mediaScanIntent":Landroid/content/Intent;
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 189
    .local v10, "videoUri":Landroid/net/Uri;
    invoke-virtual {v8, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_8d} :catch_53
    .catchall {:try_start_61 .. :try_end_8d} :catchall_55

    .line 194
    if-eqz v1, :cond_92

    .line 195
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 197
    :cond_92
    if-eqz v0, :cond_97

    .line 198
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 201
    :cond_97
    return-void
.end method

.method public static copyScreenshotToPublicPictureDir(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenshotPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "omp_games_folder"

    invoke-static {p0, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "subfolder":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    .local v0, "mediaStorageDir":Ljava/io/File;
    invoke-static {p0, p1, v0}, Lmobisocial/omlet/overlaybar/util/media/MediaUtil;->copyMediaToPublicDir(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 158
    return-void
.end method

.method public static copyVideoToPublicMovieDir(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "omp_games_folder"

    invoke-static {p0, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "subfolder":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .local v0, "mediaStorageDir":Ljava/io/File;
    invoke-static {p0, p1, v0}, Lmobisocial/omlet/overlaybar/util/media/MediaUtil;->copyMediaToPublicDir(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 164
    return-void
.end method

.method public static dpToPx(ILandroid/content/Context;)I
    .registers 5
    .param p0, "dp"    # I
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 93
    const/4 v0, 0x1

    int-to-float v1, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static getImageSize(Ljava/lang/String;)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    .registers 5
    .param p0, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 148
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 149
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 150
    new-instance v1, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;-><init>(II)V

    .line 151
    .local v1, "size":Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    return-object v1
.end method

.method public static getSyncFrameTimestampsUsTreeSet(Ljava/lang/String;)Ljava/util/TreeSet;
    .registers 13
    .param p0, "videoPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 114
    .local v6, "syncFrameTimeStampsUsTreeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 116
    .local v1, "extractor":Landroid/media/MediaExtractor;
    :try_start_a
    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 117
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/util/media/MediaUtil;->selectVideoTrack(Landroid/media/MediaExtractor;)I

    move-result v7

    .line 118
    .local v7, "videoTrackIndex":I
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 119
    const-wide/16 v2, -0x1

    .line 120
    .local v2, "previousSampleTime":J
    :goto_16
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_28

    .line 121
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_23} :catch_46

    move-result-wide v4

    .line 123
    .local v4, "sampleTime":J
    cmp-long v8, v4, v2

    if-nez v8, :cond_2e

    .line 140
    .end local v2    # "previousSampleTime":J
    .end local v4    # "sampleTime":J
    .end local v7    # "videoTrackIndex":I
    :cond_28
    :goto_28
    if-eqz v1, :cond_2d

    .line 141
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 143
    :cond_2d
    return-object v6

    .line 126
    .restart local v2    # "previousSampleTime":J
    .restart local v4    # "sampleTime":J
    .restart local v7    # "videoTrackIndex":I
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-lez v8, :cond_3e

    .line 127
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 128
    move-wide v2, v4

    .line 135
    :cond_3e
    const-wide/16 v8, 0x3e8

    add-long/2addr v8, v4

    const/4 v10, 0x1

    invoke-virtual {v1, v8, v9, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_45} :catch_46

    goto :goto_16

    .line 137
    .end local v2    # "previousSampleTime":J
    .end local v4    # "sampleTime":J
    .end local v7    # "videoTrackIndex":I
    :catch_46
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28
.end method

.method public static getVideoDurationMs(Ljava/lang/String;)J
    .registers 5
    .param p0, "videoPath"    # Ljava/lang/String;

    .prologue
    .line 81
    const-wide/16 v0, 0x0

    .line 82
    .local v0, "duration":J
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 84
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_7
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 85
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_1c

    move-result-wide v0

    .line 88
    :goto_18
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 89
    return-wide v0

    .line 86
    :catch_1c
    move-exception v3

    goto :goto_18
.end method

.method public static getVideoSize(Ljava/lang/String;)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    .registers 7
    .param p0, "videoPath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, "size":Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 70
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_6
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 71
    const/16 v5, 0x12

    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 72
    .local v4, "width":I
    const/16 v5, 0x13

    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 73
    .local v0, "height":I
    new-instance v3, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    invoke-direct {v3, v4, v0}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;-><init>(II)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2a} :catch_2f

    .end local v2    # "size":Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    .local v3, "size":Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    move-object v2, v3

    .line 76
    .end local v0    # "height":I
    .end local v3    # "size":Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    .end local v4    # "width":I
    .restart local v2    # "size":Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    :goto_2b
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 77
    return-object v2

    .line 74
    :catch_2f
    move-exception v5

    goto :goto_2b
.end method

.method public static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .registers 7
    .param p0, "mimeType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    .line 50
    .local v3, "numCodecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v3, :cond_28

    .line 51
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 52
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_14

    .line 50
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 55
    :cond_14
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "types":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_19
    array-length v5, v4

    if-ge v2, v5, :cond_11

    .line 57
    aget-object v5, v4, v2

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 62
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :goto_24
    return-object v0

    .line 56
    .restart local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v2    # "j":I
    .restart local v4    # "types":[Ljava/lang/String;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 62
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :cond_28
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public static selectVideoTrack(Landroid/media/MediaExtractor;)I
    .registers 8
    .param p0, "extractor"    # Landroid/media/MediaExtractor;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    .line 35
    .local v3, "numberTracks":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v3, :cond_49

    .line 36
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 37
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v4, "mime"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "mime":Ljava/lang/String;
    const-string v4, "video/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 40
    const-string v4, "MediaUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extractor selected track "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local v0    # "format":Landroid/media/MediaFormat;
    .end local v1    # "i":I
    .end local v2    # "mime":Ljava/lang/String;
    :goto_45
    return v1

    .line 35
    .restart local v0    # "format":Landroid/media/MediaFormat;
    .restart local v1    # "i":I
    .restart local v2    # "mime":Ljava/lang/String;
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 44
    .end local v0    # "format":Landroid/media/MediaFormat;
    .end local v2    # "mime":Ljava/lang/String;
    :cond_49
    const/4 v1, -0x1

    goto :goto_45
.end method
