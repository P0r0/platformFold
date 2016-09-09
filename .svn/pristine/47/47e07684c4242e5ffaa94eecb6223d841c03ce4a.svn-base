.class public Lmobisocial/omlet/overlaybar/util/media/TextureRender;
.super Ljava/lang/Object;
.source "TextureRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;,
        Lmobisocial/omlet/overlaybar/util/media/TextureRender$IExtraTextureRender;
    }
.end annotation


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final TAG:Ljava/lang/String; = "TextureRender"

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field _overlayBitmap:Landroid/graphics/Bitmap;

.field _testOverlay:Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;

.field private mMVPMatrix:[F

.field private mProgram:I

.field private mSTMatrix:[F

.field private mTextureID:I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private final mTriangleVerticesData:[F

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_46

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mTriangleVerticesData:[F

    .line 63
    new-array v0, v1, [F

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mMVPMatrix:[F

    .line 65
    new-array v0, v1, [F

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mSTMatrix:[F

    .line 69
    const/16 v0, -0x3039

    iput v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mTextureID:I

    .line 87
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->_overlayBitmap:Landroid/graphics/Bitmap;

    .line 89
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mTriangleVerticesData:[F

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

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 90
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mTriangleVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mSTMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 92
    return-void

    .line 51
    nop

    :array_46
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lmobisocial/omlet/overlaybar/util/media/TextureRender;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/util/media/TextureRender;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/util/media/TextureRender;)[F
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    .prologue
    .line 35
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mMVPMatrix:[F

    return-object v0
.end method

.method static synthetic access$200(Lmobisocial/omlet/overlaybar/util/media/TextureRender;)[F
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/util/media/TextureRender;

    .prologue
    .line 35
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mSTMatrix:[F

    return-object v0
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 218
    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 219
    .local v3, "vertexShader":I
    if-nez v3, :cond_d

    move v2, v4

    .line 247
    :cond_c
    :goto_c
    return v2

    .line 222
    :cond_d
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 223
    .local v1, "pixelShader":I
    if-nez v1, :cond_18

    move v2, v4

    .line 224
    goto :goto_c

    .line 226
    :cond_18
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 228
    .local v2, "program":I
    const-string v5, "glCreateProgram"

    invoke-virtual {p0, v5}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 229
    if-nez v2, :cond_2a

    .line 230
    const-string v5, "TextureRender"

    const-string v6, "Could not create program"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_2a
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 234
    const-string v5, "glAttachShader"

    invoke-virtual {p0, v5}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 235
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 237
    const-string v5, "glAttachShader"

    invoke-virtual {p0, v5}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 238
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 239
    new-array v0, v7, [I

    .line 240
    .local v0, "linkStatus":[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 241
    aget v4, v0, v4

    if-eq v4, v7, :cond_c

    .line 242
    const-string v4, "TextureRender"

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v4, "TextureRender"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 245
    const/4 v2, 0x0

    goto :goto_c
.end method

.method private loadShader(ILjava/lang/String;)I
    .registers 8
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 201
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 203
    .local v1, "shader":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glCreateShader type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 204
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 205
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 206
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 207
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 208
    aget v2, v0, v4

    if-nez v2, :cond_6c

    .line 209
    const-string v2, "TextureRender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v2, "TextureRender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 212
    const/4 v1, 0x0

    .line 214
    :cond_6c
    return v1
.end method

.method public static saveFrame(Ljava/lang/String;II)V
    .registers 21
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 280
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 281
    .local v8, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 282
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 283
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 284
    mul-int v17, p1, p2

    .line 285
    .local v17, "pixelCount":I
    move/from16 v0, v17

    new-array v11, v0, [I

    .line 286
    .local v11, "colors":[I
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 287
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2b
    move/from16 v0, v17

    if-ge v14, v0, :cond_45

    .line 288
    aget v10, v11, v14

    .line 289
    .local v10, "c":I
    const v2, -0xff0100

    and-int/2addr v2, v10

    const/high16 v3, 0xff0000

    and-int/2addr v3, v10

    shr-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    and-int/lit16 v3, v10, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    aput v2, v11, v14

    .line 287
    add-int/lit8 v14, v14, 0x1

    goto :goto_2b

    .line 291
    .end local v10    # "c":I
    :cond_45
    const/4 v12, 0x0

    .line 293
    .local v12, "fos":Ljava/io/FileOutputStream;
    :try_start_46
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4d} :catch_bd
    .catchall {:try_start_46 .. :try_end_4d} :catchall_d9

    .line 294
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    :try_start_4d
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v11, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 295
    .local v9, "bmp":Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {v9, v2, v3, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 296
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_61} :catch_101
    .catchall {:try_start_4d .. :try_end_61} :catchall_fe

    .line 301
    if-eqz v13, :cond_66

    .line 302
    :try_start_63
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_9f

    .line 307
    :cond_66
    const-string v2, "TextureRender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " frame as \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void

    .line 303
    :catch_9f
    move-exception v16

    .line 304
    .local v16, "ioe2":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 297
    .end local v9    # "bmp":Landroid/graphics/Bitmap;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "ioe2":Ljava/io/IOException;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catch_bd
    move-exception v15

    .line 298
    .local v15, "ioe":Ljava/io/IOException;
    :goto_be
    :try_start_be
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_d9
    .catchall {:try_start_be .. :try_end_d9} :catchall_d9

    .line 300
    .end local v15    # "ioe":Ljava/io/IOException;
    :catchall_d9
    move-exception v2

    .line 301
    :goto_da
    if-eqz v12, :cond_df

    .line 302
    :try_start_dc
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_df} :catch_e0

    .line 304
    :cond_df
    throw v2

    .line 303
    :catch_e0
    move-exception v16

    .line 304
    .restart local v16    # "ioe2":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 300
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "ioe2":Ljava/io/IOException;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catchall_fe
    move-exception v2

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    goto :goto_da

    .line 297
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catch_101
    move-exception v15

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    goto :goto_be
.end method


# virtual methods
.method public changeFragmentShader(Ljava/lang/String;)V
    .registers 4
    .param p1, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 193
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 194
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {p0, v0, p1}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mProgram:I

    .line 195
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mProgram:I

    if-nez v0, :cond_19

    .line 196
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_19
    return-void
.end method

.method public checkGlError(Ljava/lang/String;)V
    .registers 6
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_3f

    .line 253
    const-string v1, "TextureRender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_3f
    return-void
.end method

.method public drawFrame(Landroid/graphics/SurfaceTexture;)V
    .registers 9
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 100
    const-string v0, "onDrawFrame start"

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mSTMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 102
    invoke-static {v2, v4, v2, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 103
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 104
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 106
    const-string v0, "glUseProgram"

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 107
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 108
    const v0, 0x8d65

    iget v2, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 109
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->maPositionHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 112
    const-string v0, "glVertexAttribPointer maPosition"

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 113
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 115
    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 117
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 119
    const-string v0, "glVertexAttribPointer maTextureHandle"

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 120
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 122
    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mMVPMatrix:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 124
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->muMVPMatrixHandle:I

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mMVPMatrix:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 125
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->muSTMatrixHandle:I

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mSTMatrix:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 126
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 128
    const-string v0, "glDrawArrays"

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->_testOverlay:Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;

    if-eqz v0, :cond_95

    .line 130
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->_testOverlay:Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->draw()V

    .line 132
    :cond_95
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 133
    return-void
.end method

.method public getTextureId()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mTextureID:I

    return v0
.end method

.method public surfaceCreated()V
    .registers 9

    .prologue
    const v7, 0x812f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const v3, 0x8d65

    .line 139
    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v1, v2}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mProgram:I

    .line 140
    iget v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mProgram:I

    if-nez v1, :cond_1f

    .line 141
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "failed creating program"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_1f
    iget v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mProgram:I

    const-string v2, "aPosition"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->maPositionHandle:I

    .line 146
    const-string v1, "glGetAttribLocation aPosition"

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 147
    iget v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->maPositionHandle:I

    if-ne v1, v4, :cond_3a

    .line 148
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get attrib location for aPosition"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_3a
    iget v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->maTextureHandle:I

    .line 153
    const-string v1, "glGetAttribLocation aTextureCoord"

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 154
    iget v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->maTextureHandle:I

    if-ne v1, v4, :cond_55

    .line 155
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get attrib location for aTextureCoord"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_55
    iget v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->muMVPMatrixHandle:I

    .line 160
    const-string v1, "glGetUniformLocation uMVPMatrix"

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 161
    iget v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->muMVPMatrixHandle:I

    if-ne v1, v4, :cond_70

    .line 162
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_70
    iget v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mProgram:I

    const-string v2, "uSTMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->muSTMatrixHandle:I

    .line 167
    const-string v1, "glGetUniformLocation uSTMatrix"

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 168
    iget v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->muSTMatrixHandle:I

    if-ne v1, v4, :cond_8b

    .line 169
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get attrib location for uSTMatrix"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_8b
    new-array v0, v6, [I

    .line 172
    .local v0, "textures":[I
    invoke-static {v6, v0, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 173
    aget v1, v0, v5

    iput v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mTextureID:I

    .line 174
    iget v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->mTextureID:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 176
    const-string v1, "glBindTexture mTextureID"

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 177
    const/16 v1, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 178
    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 179
    const/16 v1, 0x2802

    invoke-static {v3, v1, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 180
    const/16 v1, 0x2803

    invoke-static {v3, v1, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 182
    const-string v1, "glTexParameter"

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 184
    new-instance v1, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;-><init>(Lmobisocial/omlet/overlaybar/util/media/TextureRender;)V

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->_testOverlay:Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;

    .line 185
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->_testOverlay:Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/media/TextureRender;->_overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/util/media/TextureRender$TestVideoOverlay;->loadTexture(Landroid/graphics/Bitmap;)V

    .line 187
    return-void
.end method
