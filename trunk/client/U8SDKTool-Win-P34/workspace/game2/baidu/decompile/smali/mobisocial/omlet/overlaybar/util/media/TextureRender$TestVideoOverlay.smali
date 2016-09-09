.class Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;
.super Ljava/lang/Object;
.source "TextureRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/util/media/TextureRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TestVideoOverlay"
.end annotation


# static fields
.field private static final FRAGMENT_SHADER2:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sampler;\nuniform float uAlpha;\nvoid main() {\n  vec4 tex = texture2D ( sampler, vTextureCoord );\n  gl_FragColor = vec4(tex.rgb/uAlpha, uAlpha);\n}\n"


# instance fields
.field private alpha:F

.field private alphaDifference:F

.field private testTriangleVertices:Ljava/nio/FloatBuffer;

.field private test_alphaHandle:I

.field private test_mProgram:I

.field private test_mTextureID:I

.field private test_maPositionHandle:I

.field private test_maTextureHandle:I

.field private test_muMVPMatrixHandle:I

.field private test_muSTMatrixHandle:I

.field final synthetic this$0:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

.field private final vTriangleVerticesData:[F


# direct methods
.method public constructor <init>(Lmobisocial/omlet/overlaybar/util/media/TextureRender;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    .prologue
    const/4 v2, -0x1

    .line 339
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->this$0:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_c0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->vTriangleVerticesData:[F

    .line 323
    const/16 v0, -0x5ba0

    iput v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_mTextureID:I

    .line 335
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->alpha:F

    .line 337
    const v0, -0x435c28f6    # -0.02f

    iput v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->alphaDifference:F

    .line 340
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->vTriangleVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->testTriangleVertices:Ljava/nio/FloatBuffer;

    .line 341
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->testTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->vTriangleVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 342
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sampler;\nuniform float uAlpha;\nvoid main() {\n  vec4 tex = texture2D ( sampler, vTextureCoord );\n  gl_FragColor = vec4(tex.rgb/uAlpha, uAlpha);\n}\n"

    # invokes: Lmobisocial/omlet/overlaybar/util/media/TextureRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p1, v0, v1}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->access$000(Lmobisocial/omlet/overlaybar/util/media/TextureRender;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_mProgram:I

    .line 344
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_maPositionHandle:I

    .line 346
    const-string v0, "glGetAttribLocation aPosition"

    invoke-virtual {p1, v0}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 347
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_maPositionHandle:I

    if-ne v0, v2, :cond_64

    .line 348
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_64
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_mProgram:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_maTextureHandle:I

    .line 353
    const-string v0, "glGetAttribLocation aTextureCoord"

    invoke-virtual {p1, v0}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 354
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_maTextureHandle:I

    if-ne v0, v2, :cond_7f

    .line 355
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_7f
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_muMVPMatrixHandle:I

    .line 360
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-virtual {p1, v0}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 361
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_muMVPMatrixHandle:I

    if-ne v0, v2, :cond_9a

    .line 362
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_9a
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_mProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_muSTMatrixHandle:I

    .line 367
    const-string v0, "glGetUniformLocation uSTMatrix"

    invoke-virtual {p1, v0}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 368
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_muSTMatrixHandle:I

    if-ne v0, v2, :cond_b5

    .line 369
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uSTMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_b5
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_mProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_alphaHandle:I

    .line 373
    return-void

    .line 316
    :array_c0
    .array-data 4
        0x3ecccccd    # 0.4f
        -0x412b020c    # -0.416f
        0x0
        0x0
        0x0
        0x3f666666    # 0.9f
        -0x412b020c    # -0.416f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3ecccccd    # 0.4f
        0x3ed4fdf4    # 0.416f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3ed4fdf4    # 0.416f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw()V
    .registers 10

    .prologue
    const/4 v1, 0x3

    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 380
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 382
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->this$0:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    const-string v2, "glUseProgram"

    invoke-virtual {v0, v2}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 383
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 384
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 385
    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 386
    const/16 v0, 0xde1

    iget v2, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_mTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 387
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->testTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 388
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_maPositionHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->testTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 390
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->this$0:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    const-string v2, "glVertexAttribPointer maPosition"

    invoke-virtual {v0, v2}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 391
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 393
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->this$0:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    const-string v2, "glEnableVertexAttribArray maPositionHandle"

    invoke-virtual {v0, v2}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->testTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 395
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->testTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 397
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->this$0:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    const-string v1, "glVertexAttribPointer maTextureHandle"

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 398
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 400
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->this$0:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    const-string v1, "glEnableVertexAttribArray maTextureHandle"

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->this$0:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    # getter for: Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mMVPMatrix:[F
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->access$100(Lmobisocial/omlet/overlaybar/util/media/TextureRender;)[F

    move-result-object v0

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 402
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_muMVPMatrixHandle:I

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->this$0:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    # getter for: Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mMVPMatrix:[F
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->access$100(Lmobisocial/omlet/overlaybar/util/media/TextureRender;)[F

    move-result-object v1

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 403
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_muSTMatrixHandle:I

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->this$0:Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    # getter for: Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mSTMatrix:[F
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->access$200(Lmobisocial/omlet/overlaybar/util/media/TextureRender;)[F

    move-result-object v1

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 404
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_alphaHandle:I

    iget v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->alpha:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 405
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->alpha:F

    iget v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->alphaDifference:F

    add-float/2addr v0, v1

    iput v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->alpha:F

    .line 406
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->alpha:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b7

    .line 407
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->alphaDifference:F

    mul-float/2addr v0, v6

    iput v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->alpha:F

    .line 408
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->alphaDifference:F

    mul-float/2addr v0, v6

    iput v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->alphaDifference:F

    .line 413
    :cond_b1
    :goto_b1
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 414
    return-void

    .line 409
    :cond_b7
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->alpha:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_b1

    .line 410
    iput v7, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->alpha:F

    .line 411
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->alphaDifference:F

    mul-float/2addr v0, v6

    iput v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->alphaDifference:F

    goto :goto_b1
.end method

.method public loadTexture(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 376
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/util/media/GLUtil;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->test_mTextureID:I

    .line 377
    return-void
.end method
