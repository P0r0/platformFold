.class public Lmobisocial/omlet/overlaybar/util/media/GLUtil;
.super Ljava/lang/Object;
.source "GLUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadTexture(Landroid/content/Context;I)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    const/16 v6, 0x2600

    const/4 v3, 0x1

    const/16 v5, 0xde1

    const/4 v4, 0x0

    .line 31
    new-array v2, v3, [I

    .line 32
    .local v2, "textureHandle":[I
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 33
    aget v3, v2, v4

    if-eqz v3, :cond_33

    .line 34
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 36
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    aget v3, v2, v4

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 42
    const/16 v3, 0x2801

    invoke-static {v5, v3, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 43
    const/16 v3, 0x2800

    invoke-static {v5, v3, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 45
    invoke-static {v5, v4, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 47
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 49
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_33
    aget v3, v2, v4

    if-nez v3, :cond_3f

    .line 50
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error loading texture."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 52
    :cond_3f
    aget v3, v2, v4

    return v3
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;)I
    .registers 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v4, 0x2600

    const/4 v1, 0x1

    const/16 v3, 0xde1

    const/4 v2, 0x0

    .line 13
    new-array v0, v1, [I

    .line 14
    .local v0, "textureHandle":[I
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 15
    aget v1, v0, v2

    if-eqz v1, :cond_24

    .line 16
    aget v1, v0, v2

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 18
    const/16 v1, 0x2801

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 19
    const/16 v1, 0x2800

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 20
    invoke-static {v3, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 22
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 24
    :cond_24
    aget v1, v0, v2

    if-nez v1, :cond_30

    .line 25
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error loading texture."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_30
    aget v1, v0, v2

    return v1
.end method
