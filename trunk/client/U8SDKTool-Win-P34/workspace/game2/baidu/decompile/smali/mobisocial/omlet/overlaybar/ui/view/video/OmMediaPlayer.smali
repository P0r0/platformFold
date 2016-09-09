.class public Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "OmMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;
    }
.end annotation


# instance fields
.field private _CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 43
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->IDLE:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 44
    return-void
.end method


# virtual methods
.method public canGetIsPlaying()Z
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    if-ne v0, v1, :cond_8

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public canPause()Z
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->STARTED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PAUSED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PLAYBACK_COMPLETED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    if-ne v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public canSeek()Z
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PREPARED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->STARTED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PAUSED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PLAYBACK_COMPLETED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public canSetVolume()Z
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    if-ne v0, v1, :cond_8

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public canStart()Z
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PREPARED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->STARTED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PAUSED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PLAYBACK_COMPLETED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getCurrentState()Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    return-object v0
.end method

.method public pause()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 238
    :try_start_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V

    .line 239
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PAUSED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_8

    .line 244
    return-void

    .line 240
    :catch_8
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 242
    throw v0
.end method

.method public prepare()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 191
    :try_start_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepare()V

    .line 192
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PREPARED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_e

    .line 200
    return-void

    .line 193
    :catch_8
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 195
    throw v0

    .line 196
    .end local v0    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 198
    throw v0
.end method

.method public prepareAsync()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 205
    :try_start_0
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PREPARING:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 206
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_8

    .line 211
    return-void

    .line 207
    :catch_8
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 209
    throw v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 254
    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V

    .line 255
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->END:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 256
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 248
    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V

    .line 249
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->IDLE:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 250
    return-void
.end method

.method public setCurrentStateError()V
    .registers 2

    .prologue
    .line 55
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 56
    return-void
.end method

.method public setCurrentStatePlaybackCompleted()V
    .registers 2

    .prologue
    .line 59
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PLAYBACK_COMPLETED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 60
    return-void
.end method

.method public setCurrentStatePrepared()V
    .registers 2

    .prologue
    .line 51
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PREPARED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 52
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 92
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->INITIALIZED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_14
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_1a

    .line 106
    return-void

    .line 93
    :catch_8
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 95
    throw v0

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 98
    throw v0

    .line 99
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_14
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 101
    throw v0

    .line 102
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1a
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 104
    throw v0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 111
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 112
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->INITIALIZED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_14
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_1a

    .line 126
    return-void

    .line 113
    :catch_8
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 115
    throw v0

    .line 116
    .end local v0    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 118
    throw v0

    .line 119
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_14
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 121
    throw v0

    .line 122
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1a
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 124
    throw v0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 151
    :try_start_0
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 152
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->INITIALIZED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_14
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_1a

    .line 166
    return-void

    .line 153
    :catch_8
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 155
    throw v0

    .line 156
    .end local v0    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 158
    throw v0

    .line 159
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_14
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 161
    throw v0

    .line 162
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1a
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 164
    throw v0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 171
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 172
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->INITIALIZED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_14
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_1a

    .line 186
    return-void

    .line 173
    :catch_8
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 175
    throw v0

    .line 176
    .end local v0    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 178
    throw v0

    .line 179
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_14
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 181
    throw v0

    .line 182
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1a
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 184
    throw v0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 132
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->INITIALIZED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_14
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_1a

    .line 146
    return-void

    .line 133
    :catch_8
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 135
    throw v0

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 138
    throw v0

    .line 139
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_14
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 141
    throw v0

    .line 142
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1a
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 144
    throw v0
.end method

.method public start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 216
    :try_start_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    .line 217
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->STARTED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_8

    .line 222
    return-void

    .line 218
    :catch_8
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 220
    throw v0
.end method

.method public stop()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 227
    :try_start_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 228
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->STOPPED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_8

    .line 233
    return-void

    .line 229
    :catch_8
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->_CurrentState:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 231
    throw v0
.end method
