.class Lmobisocial/omlet/overlaybar/util/media/OutputSurface;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OutputSurface"

.field private static final VERBOSE:Z


# instance fields
.field _overlayBitmap:Landroid/graphics/Bitmap;

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mFrameAvailable:Z

.field private mFrameSyncObject:Ljava/lang/Object;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRender:Lmobisocial/omlet/overlaybar/util/media/TextureRender;


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 56
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 58
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 80
    if-lez p1, :cond_1a

    if-gtz p2, :cond_20

    .line 81
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 83
    :cond_20
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->eglSetup(II)V

    .line 84
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->makeCurrent()V

    .line 85
    invoke-direct {p0, p0}, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->setup(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 56
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 58
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->_overlayBitmap:Landroid/graphics/Bitmap;

    .line 94
    invoke-direct {p0, p0}, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->setup(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 56
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 58
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 98
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->setup(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 99
    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_29

    .line 301
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_29
    return-void
.end method

.method private eglSetup(II)V
    .registers 14
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 132
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v2, :cond_15

    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to get EGL14 display"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_15
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 136
    .local v10, "version":[I
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v10, v2, v10, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to initialize EGL14"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_2d
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_aa

    .line 143
    .local v1, "attribList":[I
    const/4 v0, 0x1

    new-array v3, v0, [Landroid/opengl/EGLConfig;

    .line 144
    .local v3, "configs":[Landroid/opengl/EGLConfig;
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 145
    .local v6, "numConfigs":[I
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, v3

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_4e
    const/4 v0, 0x3

    new-array v8, v0, [I

    fill-array-data v8, :array_c4

    .line 150
    .local v8, "attrib_list":[I
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v8, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 152
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_73

    .line 154
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "null context"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_73
    const/4 v0, 0x5

    new-array v9, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0x3057

    aput v2, v9, v0

    const/4 v0, 0x1

    aput p1, v9, v0

    const/4 v0, 0x2

    const/16 v2, 0x3056

    aput v2, v9, v0

    const/4 v0, 0x3

    aput p2, v9, v0

    const/4 v0, 0x4

    const/16 v2, 0x3038

    aput v2, v9, v0

    .line 159
    .local v9, "surfaceAttribs":[I
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    const/4 v4, 0x0

    invoke-static {v0, v2, v9, v4}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 161
    const-string v0, "eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_a8

    .line 163
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "surface was null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_a8
    return-void

    .line 142
    nop

    :array_aa
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    .line 149
    :array_c4
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private setup(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .prologue
    .line 106
    new-instance v0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->_overlayBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mTextureRender:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    .line 107
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mTextureRender:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->surfaceCreated()V

    .line 111
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mTextureRender:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 123
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 124
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 125
    return-void
.end method


# virtual methods
.method public awaitNewImage()V
    .registers 7

    .prologue
    .line 218
    const/16 v0, 0x1f4

    .line 219
    .local v0, "TIMEOUT_MS":I
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v3

    .line 220
    :cond_5
    :try_start_5
    iget-boolean v2, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mFrameAvailable:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_23

    if-nez v2, :cond_26

    .line 224
    :try_start_9
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 225
    iget-boolean v2, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mFrameAvailable:Z

    if-nez v2, :cond_5

    .line 227
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Surface frame wait timed out"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_1c} :catch_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_23

    .line 229
    :catch_1c
    move-exception v1

    .line 230
    .local v1, "ie":Ljava/lang/InterruptedException;
    :try_start_1d
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 234
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_23

    throw v2

    .line 233
    :cond_26
    const/4 v2, 0x0

    :try_start_27
    iput-boolean v2, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mFrameAvailable:Z

    .line 234
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_23

    .line 237
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mTextureRender:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    const-string v3, "before updateTexImage"

    invoke-virtual {v2, v3}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 239
    return-void
.end method

.method public changeFragmentShader(Ljava/lang/String;)V
    .registers 3
    .param p1, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mTextureRender:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    invoke-virtual {v0, p1}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->changeFragmentShader(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public checkForNewImage(I)Z
    .registers 8
    .param p1, "timeoutMs"    # I

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 248
    :cond_4
    :try_start_4
    iget-boolean v3, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mFrameAvailable:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_1b

    if-nez v3, :cond_1e

    .line 252
    :try_start_8
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 253
    iget-boolean v3, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mFrameAvailable:Z
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_10} :catch_14
    .catchall {:try_start_8 .. :try_end_10} :catchall_1b

    if-nez v3, :cond_4

    .line 254
    :try_start_12
    monitor-exit v2

    .line 266
    :goto_13
    return v1

    .line 256
    :catch_14
    move-exception v0

    .line 257
    .local v0, "ie":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 261
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    throw v1

    .line 260
    :cond_1e
    const/4 v1, 0x0

    :try_start_1f
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mFrameAvailable:Z

    .line 261
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_1b

    .line 264
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mTextureRender:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    const-string v2, "before updateTexImage"

    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 266
    const/4 v1, 0x1

    goto :goto_13
.end method

.method public drawImage()V
    .registers 3

    .prologue
    .line 273
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mTextureRender:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->drawFrame(Landroid/graphics/SurfaceTexture;)V

    .line 274
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public latchImage()V
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mTextureRender:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    const-string v1, "before updateTexImage"

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 280
    return-void
.end method

.method public makeCurrent()V
    .registers 5

    .prologue
    .line 193
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_16
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 5
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 286
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_3
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mFrameAvailable:Z

    if-eqz v0, :cond_12

    .line 288
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    .line 290
    :cond_12
    const/4 v0, 0x1

    :try_start_13
    iput-boolean v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mFrameAvailable:Z

    .line 291
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 292
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_f

    .line 293
    return-void
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_1d

    .line 172
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 173
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 174
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 175
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 177
    :cond_1d
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 181
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 182
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 183
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 184
    iput-object v2, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mTextureRender:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    .line 185
    iput-object v2, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 186
    iput-object v2, p0, Lmobisocial/omlet/overlaybar/util/media/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 187
    return-void
.end method
