.class public Lcom/duoku/platform/ui/DKContainerActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/f;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;,
        Lcom/duoku/platform/ui/DKContainerActivity$a;,
        Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;
    }
.end annotation


# static fields
.field private static g:Lcom/duoku/platform/util/k;

.field private static h:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static final l:Ljava/io/File;

.field private static synthetic q:[I


# instance fields
.field private a:Lcom/duoku/platform/view/c;

.field private b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/duoku/platform/view/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/RelativeLayout;

.field private d:Lcom/duoku/platform/ui/DKContainerActivity$a;

.field private e:Z

.field private f:I

.field private i:Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;

.field private j:Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;

.field private m:Ljava/io/File;

.field private n:Landroid/graphics/Bitmap;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 78
    const-class v0, Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->g:Lcom/duoku/platform/util/k;

    .line 81
    const-string v0, "com.duoku.close"

    sput-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->h:Ljava/lang/String;

    .line 556
    const-string v0, "com.duoku.uploadimg"

    sput-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->k:Ljava/lang/String;

    .line 695
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/duoku/platform/util/q;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->l:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->e:Z

    .line 61
    return-void
.end method

.method private a(I)Lcom/duoku/platform/view/c;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 405
    .line 406
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 408
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    move-object v0, v1

    .line 420
    :goto_e
    return-object v0

    .line 410
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/c;

    .line 412
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v3, p1, :cond_7

    goto :goto_e
.end method

.method static synthetic a(Lcom/duoku/platform/ui/DKContainerActivity;)Lcom/duoku/platform/view/c;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)V
    .registers 9

    .prologue
    const/16 v6, 0x1f4

    .line 861
    :try_start_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 862
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 863
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->n:Landroid/graphics/Bitmap;

    .line 864
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 865
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 866
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 867
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 868
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 869
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 870
    const/4 v5, 0x1

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 871
    mul-int v5, v1, v2

    div-int/lit16 v5, v5, 0x3e8

    .line 872
    if-le v1, v2, :cond_95

    .line 874
    if-le v1, v4, :cond_8d

    .line 876
    div-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 895
    :cond_3d
    :goto_3d
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 896
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->n:Landroid/graphics/Bitmap;

    .line 897
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 899
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8c

    .line 901
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 902
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/duoku/platform/ui/DKContainerActivity;->l:Ljava/io/File;

    const-string v2, "tmp.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->m:Ljava/io/File;

    .line 903
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 905
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_73} :catch_93

    .line 909
    :cond_73
    :try_start_73
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->m:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 910
    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->n:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 911
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 912
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_89} :catch_a5

    .line 919
    :goto_89
    :try_start_89
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->p()V

    .line 926
    :cond_8c
    :goto_8c
    return-void

    .line 878
    :cond_8d
    if-le v5, v6, :cond_3d

    .line 880
    const/4 v1, 0x4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_3d

    .line 923
    :catch_93
    move-exception v0

    goto :goto_8c

    .line 883
    :cond_95
    if-ge v1, v2, :cond_3d

    .line 885
    if-le v2, v3, :cond_9f

    .line 887
    div-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_3d

    .line 889
    :cond_9f
    if-le v5, v6, :cond_3d

    .line 891
    const/4 v1, 0x4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_a4} :catch_93

    goto :goto_3d

    .line 914
    :catch_a5
    move-exception v0

    goto :goto_89
.end method

.method static synthetic a(Lcom/duoku/platform/ui/DKContainerActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 799
    iput-object p1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->o:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/duoku/platform/view/c;)V
    .registers 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/ui/DKContainerActivity;)V
    .registers 1

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->m()V

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/ui/DKContainerActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 800
    iput-object p1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/ui/DKContainerActivity;)V
    .registers 1

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->n()V

    return-void
.end method

.method static synthetic c()[I
    .registers 3

    .prologue
    .line 61
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->q:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/duoku/platform/c/c;->values()[Lcom/duoku/platform/c/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/duoku/platform/c/c;->c:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_1b5

    :goto_15
    :try_start_15
    sget-object v1, Lcom/duoku/platform/c/c;->G:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1b2

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/duoku/platform/c/c;->E:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_29} :catch_1af

    :goto_29
    :try_start_29
    sget-object v1, Lcom/duoku/platform/c/c;->D:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_1ac

    :goto_33
    :try_start_33
    sget-object v1, Lcom/duoku/platform/c/c;->B:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_1a9

    :goto_3d
    :try_start_3d
    sget-object v1, Lcom/duoku/platform/c/c;->H:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_1a6

    :goto_47
    :try_start_47
    sget-object v1, Lcom/duoku/platform/c/c;->A:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_51} :catch_1a3

    :goto_51
    :try_start_51
    sget-object v1, Lcom/duoku/platform/c/c;->z:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5b} :catch_1a0

    :goto_5b
    :try_start_5b
    sget-object v1, Lcom/duoku/platform/c/c;->F:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_65} :catch_19d

    :goto_65
    :try_start_65
    sget-object v1, Lcom/duoku/platform/c/c;->C:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_19a

    :goto_6f
    :try_start_6f
    sget-object v1, Lcom/duoku/platform/c/c;->x:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_197

    :goto_79
    :try_start_79
    sget-object v1, Lcom/duoku/platform/c/c;->y:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_194

    :goto_83
    :try_start_83
    sget-object v1, Lcom/duoku/platform/c/c;->p:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8d} :catch_191

    :goto_8d
    :try_start_8d
    sget-object v1, Lcom/duoku/platform/c/c;->t:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_97} :catch_18e

    :goto_97
    :try_start_97
    sget-object v1, Lcom/duoku/platform/c/c;->r:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a1} :catch_18b

    :goto_a1
    :try_start_a1
    sget-object v1, Lcom/duoku/platform/c/c;->s:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ab} :catch_188

    :goto_ab
    :try_start_ab
    sget-object v1, Lcom/duoku/platform/c/c;->u:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_b5} :catch_185

    :goto_b5
    :try_start_b5
    sget-object v1, Lcom/duoku/platform/c/c;->v:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_bf} :catch_182

    :goto_bf
    :try_start_bf
    sget-object v1, Lcom/duoku/platform/c/c;->q:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bf .. :try_end_c9} :catch_17f

    :goto_c9
    :try_start_c9
    sget-object v1, Lcom/duoku/platform/c/c;->w:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_d3} :catch_17c

    :goto_d3
    :try_start_d3
    sget-object v1, Lcom/duoku/platform/c/c;->h:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d3 .. :try_end_dd} :catch_179

    :goto_dd
    :try_start_dd
    sget-object v1, Lcom/duoku/platform/c/c;->l:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dd .. :try_end_e7} :catch_176

    :goto_e7
    :try_start_e7
    sget-object v1, Lcom/duoku/platform/c/c;->m:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e7 .. :try_end_f1} :catch_173

    :goto_f1
    :try_start_f1
    sget-object v1, Lcom/duoku/platform/c/c;->o:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f1 .. :try_end_fb} :catch_171

    :goto_fb
    :try_start_fb
    sget-object v1, Lcom/duoku/platform/c/c;->g:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_104
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fb .. :try_end_104} :catch_16f

    :goto_104
    :try_start_104
    sget-object v1, Lcom/duoku/platform/c/c;->n:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_10e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_104 .. :try_end_10e} :catch_16d

    :goto_10e
    :try_start_10e
    sget-object v1, Lcom/duoku/platform/c/c;->j:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_118
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10e .. :try_end_118} :catch_16b

    :goto_118
    :try_start_118
    sget-object v1, Lcom/duoku/platform/c/c;->k:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_118 .. :try_end_122} :catch_169

    :goto_122
    :try_start_122
    sget-object v1, Lcom/duoku/platform/c/c;->i:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12c} :catch_167

    :goto_12c
    :try_start_12c
    sget-object v1, Lcom/duoku/platform/c/c;->d:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_135
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_135} :catch_165

    :goto_135
    :try_start_135
    sget-object v1, Lcom/duoku/platform/c/c;->e:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_13e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_135 .. :try_end_13e} :catch_163

    :goto_13e
    :try_start_13e
    sget-object v1, Lcom/duoku/platform/c/c;->f:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_147
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13e .. :try_end_147} :catch_161

    :goto_147
    :try_start_147
    sget-object v1, Lcom/duoku/platform/c/c;->b:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_147 .. :try_end_150} :catch_15f

    :goto_150
    :try_start_150
    sget-object v1, Lcom/duoku/platform/c/c;->a:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_159
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_159} :catch_15d

    :goto_159
    sput-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->q:[I

    goto/16 :goto_4

    :catch_15d
    move-exception v1

    goto :goto_159

    :catch_15f
    move-exception v1

    goto :goto_150

    :catch_161
    move-exception v1

    goto :goto_147

    :catch_163
    move-exception v1

    goto :goto_13e

    :catch_165
    move-exception v1

    goto :goto_135

    :catch_167
    move-exception v1

    goto :goto_12c

    :catch_169
    move-exception v1

    goto :goto_122

    :catch_16b
    move-exception v1

    goto :goto_118

    :catch_16d
    move-exception v1

    goto :goto_10e

    :catch_16f
    move-exception v1

    goto :goto_104

    :catch_171
    move-exception v1

    goto :goto_fb

    :catch_173
    move-exception v1

    goto/16 :goto_f1

    :catch_176
    move-exception v1

    goto/16 :goto_e7

    :catch_179
    move-exception v1

    goto/16 :goto_dd

    :catch_17c
    move-exception v1

    goto/16 :goto_d3

    :catch_17f
    move-exception v1

    goto/16 :goto_c9

    :catch_182
    move-exception v1

    goto/16 :goto_bf

    :catch_185
    move-exception v1

    goto/16 :goto_b5

    :catch_188
    move-exception v1

    goto/16 :goto_ab

    :catch_18b
    move-exception v1

    goto/16 :goto_a1

    :catch_18e
    move-exception v1

    goto/16 :goto_97

    :catch_191
    move-exception v1

    goto/16 :goto_8d

    :catch_194
    move-exception v1

    goto/16 :goto_83

    :catch_197
    move-exception v1

    goto/16 :goto_79

    :catch_19a
    move-exception v1

    goto/16 :goto_6f

    :catch_19d
    move-exception v1

    goto/16 :goto_65

    :catch_1a0
    move-exception v1

    goto/16 :goto_5b

    :catch_1a3
    move-exception v1

    goto/16 :goto_51

    :catch_1a6
    move-exception v1

    goto/16 :goto_47

    :catch_1a9
    move-exception v1

    goto/16 :goto_3d

    :catch_1ac
    move-exception v1

    goto/16 :goto_33

    :catch_1af
    move-exception v1

    goto/16 :goto_29

    :catch_1b2
    move-exception v1

    goto/16 :goto_1f

    :catch_1b5
    move-exception v1

    goto/16 :goto_15
.end method

.method private d()V
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 426
    return-void
.end method

.method private e()Lcom/duoku/platform/view/c;
    .registers 4

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 452
    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    .line 454
    const/4 v2, 0x1

    if-le v1, v2, :cond_14

    .line 456
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Ljava/util/Stack;

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/c;

    .line 459
    :cond_14
    return-object v0
.end method

.method private f()Lcom/duoku/platform/view/c;
    .registers 3

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 467
    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    .line 469
    if-lez v1, :cond_13

    .line 471
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Ljava/util/Stack;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/c;

    .line 474
    :cond_13
    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 612
    new-instance v0, Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;-><init>(Lcom/duoku/platform/ui/DKContainerActivity;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->j:Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;

    .line 613
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 614
    sget-object v1, Lcom/duoku/platform/ui/DKContainerActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 615
    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->j:Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 616
    return-void
.end method

.method private h()V
    .registers 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->j:Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;

    if-eqz v0, :cond_9

    .line 626
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->j:Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 629
    :cond_9
    return-void
.end method

.method private i()V
    .registers 3

    .prologue
    .line 637
    new-instance v0, Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;-><init>(Lcom/duoku/platform/ui/DKContainerActivity;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->i:Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;

    .line 638
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 639
    sget-object v1, Lcom/duoku/platform/ui/DKContainerActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 640
    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->i:Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 641
    return-void
.end method

.method private j()V
    .registers 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->i:Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;

    if-eqz v0, :cond_9

    .line 651
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->i:Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 654
    :cond_9
    return-void
.end method

.method private k()V
    .registers 3

    .prologue
    .line 661
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->d:Lcom/duoku/platform/ui/DKContainerActivity$a;

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->e:Z

    if-nez v0, :cond_29

    .line 663
    new-instance v0, Lcom/duoku/platform/ui/DKContainerActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/ui/DKContainerActivity$a;-><init>(Lcom/duoku/platform/ui/DKContainerActivity;Lcom/duoku/platform/ui/DKContainerActivity$a;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->d:Lcom/duoku/platform/ui/DKContainerActivity$a;

    .line 665
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 666
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 667
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 668
    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->d:Lcom/duoku/platform/ui/DKContainerActivity$a;

    invoke-virtual {p0, v1, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->e:Z

    .line 671
    :cond_29
    return-void
.end method

.method private l()V
    .registers 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->d:Lcom/duoku/platform/ui/DKContainerActivity$a;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->e:Z

    if-eqz v0, :cond_10

    .line 687
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->d:Lcom/duoku/platform/ui/DKContainerActivity$a;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->e:Z

    .line 690
    :cond_10
    return-void
.end method

.method private m()V
    .registers 4

    .prologue
    .line 712
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 714
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 715
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/duoku/platform/ui/DKContainerActivity;->l:Ljava/io/File;

    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->o()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->m:Ljava/io/File;

    .line 716
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->m:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 718
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 719
    const-string v2, "gp"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v1, "output"

    iget-object v2, p0, Lcom/duoku/platform/ui/DKContainerActivity;->m:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 721
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/duoku/platform/ui/DKContainerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 727
    :cond_43
    return-void
.end method

.method private n()V
    .registers 4

    .prologue
    .line 737
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 738
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/duoku/platform/ui/DKContainerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 747
    :goto_d
    return-void

    .line 743
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private o()Ljava/lang/String;
    .registers 5

    .prologue
    .line 756
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 757
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'tmp\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".jpg"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .registers 8

    .prologue
    .line 807
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->o:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->p:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 811
    :try_start_8
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/duoku/platform/util/q;->b(Ljava/lang/String;)Ljava/util/Map;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_d} :catch_20

    .line 818
    :goto_d
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->o:Ljava/lang/String;

    const/16 v2, 0x69

    iget-object v3, p0, Lcom/duoku/platform/ui/DKContainerActivity;->p:Ljava/lang/String;

    const-string v4, "Filedata"

    iget-object v5, p0, Lcom/duoku/platform/ui/DKContainerActivity;->m:Ljava/io/File;

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/duoku/platform/g/f;)I

    .line 820
    :cond_1f
    return-void

    .line 813
    :catch_20
    move-exception v0

    .line 816
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 435
    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 440
    return-void

    .line 437
    :cond_9
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(IIILjava/lang/String;)V
    .registers 6

    .prologue
    .line 848
    const-string v0, "\u56fe\u7247\u4e0a\u4f20\u5931\u8d25\uff01"

    invoke-static {p0, v0}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 849
    return-void
.end method

.method public a(ILcom/duoku/platform/h/a;I)V
    .registers 6

    .prologue
    .line 825
    check-cast p2, Lcom/duoku/platform/h/v;

    .line 826
    invoke-virtual {p2}, Lcom/duoku/platform/h/v;->getErrorString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 829
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    check-cast v0, Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-virtual {p2}, Lcom/duoku/platform/h/v;->getErrorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Ljava/lang/String;)V

    .line 831
    :cond_13
    return-void
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 843
    return-void
.end method

.method public a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V
    .registers 6

    .prologue
    .line 240
    if-gtz p3, :cond_3

    .line 255
    :goto_2
    return-void

    .line 245
    :cond_3
    invoke-direct {p0, p3}, Lcom/duoku/platform/ui/DKContainerActivity;->a(I)Lcom/duoku/platform/view/c;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_d

    .line 249
    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/view/c;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;)V

    goto :goto_2

    .line 253
    :cond_d
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->g:Lcom/duoku/platform/util/k;

    const-string v1, "update view failed because couldn\'t find view by viewid"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(Lcom/duoku/platform/c/c;Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V
    .registers 7

    .prologue
    .line 171
    sget-object v0, Lcom/duoku/platform/c/b;->t:Lcom/duoku/platform/c/b;

    if-ne v0, p2, :cond_32

    .line 174
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->g:Lcom/duoku/platform/util/k;

    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->e()Lcom/duoku/platform/view/c;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_26

    .line 179
    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 180
    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->m()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 181
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->d()V

    .line 184
    :cond_26
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->g:Lcom/duoku/platform/util/k;

    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 192
    :goto_31
    return-void

    .line 188
    :cond_32
    iput p4, p0, Lcom/duoku/platform/ui/DKContainerActivity;->f:I

    .line 189
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    goto :goto_31
.end method

.method public a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 197
    invoke-static {}, Lcom/duoku/platform/ui/DKContainerActivity;->c()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 223
    :goto_d
    :pswitch_d
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    if-eqz v0, :cond_16

    .line 225
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    invoke-virtual {p0, p2, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Ljava/lang/Object;Lcom/duoku/platform/view/c;)V

    .line 227
    :cond_16
    return-void

    .line 200
    :pswitch_17
    new-instance v0, Lcom/duoku/platform/view/user/a;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/user/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    goto :goto_d

    .line 207
    :pswitch_1f
    new-instance v0, Lcom/duoku/platform/view/a/b;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    goto :goto_d

    .line 210
    :pswitch_27
    new-instance v0, Lcom/duoku/platform/view/a/a;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    goto :goto_d

    .line 213
    :pswitch_2f
    new-instance v0, Lcom/duoku/platform/view/a/c;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    goto :goto_d

    .line 216
    :pswitch_37
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-direct {v0, p0}, Lcom/duoku/platform/floatview/DKFloatWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    goto :goto_d

    .line 197
    nop

    :pswitch_data_40
    .packed-switch 0x10
        :pswitch_17
        :pswitch_d
        :pswitch_d
        :pswitch_1f
        :pswitch_27
        :pswitch_2f
        :pswitch_d
        :pswitch_37
    .end packed-switch
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 837
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/duoku/platform/view/c;)V
    .registers 5

    .prologue
    .line 231
    invoke-virtual {p2, p1}, Lcom/duoku/platform/view/c;->a(Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 233
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Lcom/duoku/platform/view/c;->m()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 234
    invoke-direct {p0, p2}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/view/c;)V

    .line 235
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 479
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 482
    if-eqz v0, :cond_18

    .line 484
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 485
    if-eqz v1, :cond_18

    .line 487
    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 490
    :cond_18
    return-void
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 794
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 795
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.ACTION_H5_CLOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 797
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 763
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 765
    const/4 v0, -0x1

    if-eq p2, v0, :cond_7

    .line 789
    :cond_6
    :goto_6
    return-void

    .line 769
    :cond_7
    packed-switch p1, :pswitch_data_24

    goto :goto_6

    .line 782
    :pswitch_b
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->m:Ljava/io/File;

    if-eqz v0, :cond_6

    .line 784
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->m:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Landroid/net/Uri;)V

    goto :goto_6

    .line 773
    :pswitch_19
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 774
    if-eqz v0, :cond_6

    .line 776
    invoke-direct {p0, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Landroid/net/Uri;)V

    goto :goto_6

    .line 769
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_b
        :pswitch_19
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const-string v0, "DKContainerActivity"

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    .line 88
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 89
    if-eqz v0, :cond_1d

    const-string v1, "motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 95
    :cond_1d
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->g()Z

    move-result v0

    if-eqz v0, :cond_8d

    sget v0, Lcom/duoku/platform/util/Constants;->screen_landscape_flag:I

    if-ne v0, v2, :cond_8d

    .line 98
    invoke-virtual {p0, v4}, Lcom/duoku/platform/ui/DKContainerActivity;->setRequestedOrientation(I)V

    .line 107
    :cond_2e
    :goto_2e
    const-string v0, "dk_container"

    invoke-static {p0, v0}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->setContentView(I)V

    .line 108
    const-string v0, "dk_viewcontainer"

    invoke-static {p0, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->c:Landroid/widget/RelativeLayout;

    .line 109
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Ljava/util/Stack;

    .line 111
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/ui/DKContainerActivity;)V

    .line 113
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sdk_view_id"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 114
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "auto_login_state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 116
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "dkImportantInfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/entity/j;

    .line 118
    sget-object v2, Lcom/duoku/platform/c/c;->q:Lcom/duoku/platform/c/c;

    invoke-virtual {v2}, Lcom/duoku/platform/c/c;->a()I

    move-result v2

    if-ne v1, v2, :cond_91

    .line 120
    sget-object v0, Lcom/duoku/platform/c/c;->q:Lcom/duoku/platform/c/c;

    invoke-virtual {p0, v0, v3}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    .line 158
    :cond_83
    :goto_83
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->k()V

    .line 161
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->i()V

    .line 164
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->g()V

    .line 166
    return-void

    .line 103
    :cond_8d
    invoke-virtual {p0, v2}, Lcom/duoku/platform/ui/DKContainerActivity;->setRequestedOrientation(I)V

    goto :goto_2e

    .line 122
    :cond_91
    sget-object v2, Lcom/duoku/platform/c/c;->r:Lcom/duoku/platform/c/c;

    invoke-virtual {v2}, Lcom/duoku/platform/c/c;->a()I

    move-result v2

    if-ne v1, v2, :cond_9f

    .line 124
    sget-object v0, Lcom/duoku/platform/c/c;->r:Lcom/duoku/platform/c/c;

    invoke-virtual {p0, v0, v3}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_83

    .line 126
    :cond_9f
    sget-object v2, Lcom/duoku/platform/c/c;->p:Lcom/duoku/platform/c/c;

    invoke-virtual {v2}, Lcom/duoku/platform/c/c;->a()I

    move-result v2

    if-ne v1, v2, :cond_ad

    .line 128
    sget-object v0, Lcom/duoku/platform/c/c;->p:Lcom/duoku/platform/c/c;

    invoke-virtual {p0, v0, v3}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_83

    .line 130
    :cond_ad
    sget-object v2, Lcom/duoku/platform/c/c;->s:Lcom/duoku/platform/c/c;

    invoke-virtual {v2}, Lcom/duoku/platform/c/c;->a()I

    move-result v2

    if-ne v2, v1, :cond_bb

    .line 132
    sget-object v0, Lcom/duoku/platform/c/c;->s:Lcom/duoku/platform/c/c;

    invoke-virtual {p0, v0, v3}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_83

    .line 134
    :cond_bb
    sget-object v2, Lcom/duoku/platform/c/c;->t:Lcom/duoku/platform/c/c;

    invoke-virtual {v2}, Lcom/duoku/platform/c/c;->a()I

    move-result v2

    if-ne v2, v1, :cond_c9

    .line 136
    sget-object v0, Lcom/duoku/platform/c/c;->t:Lcom/duoku/platform/c/c;

    invoke-virtual {p0, v0, v3}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_83

    .line 138
    :cond_c9
    sget-object v2, Lcom/duoku/platform/c/c;->u:Lcom/duoku/platform/c/c;

    invoke-virtual {v2}, Lcom/duoku/platform/c/c;->a()I

    move-result v2

    if-ne v2, v1, :cond_d7

    .line 140
    sget-object v1, Lcom/duoku/platform/c/c;->u:Lcom/duoku/platform/c/c;

    invoke-virtual {p0, v1, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_83

    .line 143
    :cond_d7
    sget-object v0, Lcom/duoku/platform/c/c;->v:Lcom/duoku/platform/c/c;

    invoke-virtual {v0}, Lcom/duoku/platform/c/c;->a()I

    move-result v0

    if-ne v0, v1, :cond_e5

    .line 145
    sget-object v0, Lcom/duoku/platform/c/c;->v:Lcom/duoku/platform/c/c;

    invoke-virtual {p0, v0, v3}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_83

    .line 147
    :cond_e5
    sget-object v0, Lcom/duoku/platform/c/c;->F:Lcom/duoku/platform/c/c;

    invoke-virtual {v0}, Lcom/duoku/platform/c/c;->a()I

    move-result v0

    if-ne v0, v1, :cond_f3

    .line 150
    sget-object v0, Lcom/duoku/platform/c/c;->F:Lcom/duoku/platform/c/c;

    invoke-virtual {p0, v0, v3}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_83

    .line 153
    :cond_f3
    sget-object v0, Lcom/duoku/platform/c/c;->w:Lcom/duoku/platform/c/c;

    invoke-virtual {v0}, Lcom/duoku/platform/c/c;->a()I

    move-result v0

    if-ne v0, v1, :cond_83

    .line 155
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dk_operate_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    sget-object v1, Lcom/duoku/platform/c/c;->w:Lcom/duoku/platform/c/c;

    invoke-virtual {p0, v1, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto/16 :goto_83
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 268
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 270
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->l()V

    .line 272
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->j()V

    .line 275
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->h()V

    .line 277
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    if-eqz v0, :cond_15

    .line 279
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->d()V

    .line 282
    :cond_15
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->g:Lcom/duoku/platform/util/k;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->a()V

    .line 285
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/ui/DKContainerActivity;)V

    .line 286
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 365
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4d

    .line 367
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    instance-of v0, v0, Lcom/duoku/platform/floatview/DKFloatWebView;

    if-eqz v0, :cond_13

    .line 370
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    check-cast v0, Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-virtual {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->c()V

    move v0, v1

    .line 400
    :goto_12
    return v0

    .line 373
    :cond_13
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    instance-of v0, v0, Lcom/duoku/platform/view/user/a;

    if-eqz v0, :cond_22

    .line 376
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    check-cast v0, Lcom/duoku/platform/view/user/a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/user/a;->o()V

    move v0, v1

    .line 377
    goto :goto_12

    .line 385
    :cond_22
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    instance-of v0, v0, Lcom/duoku/platform/view/a/c;

    if-eqz v0, :cond_31

    .line 388
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    check-cast v0, Lcom/duoku/platform/view/a/c;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a/c;->c()V

    move v0, v1

    .line 389
    goto :goto_12

    .line 392
    :cond_31
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v1, :cond_4d

    .line 394
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->f()Lcom/duoku/platform/view/c;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->g()Lcom/duoku/platform/c/c;

    move-result-object v2

    sget-object v3, Lcom/duoku/platform/c/b;->t:Lcom/duoku/platform/c/b;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->h()I

    move-result v0

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    move v0, v1

    .line 396
    goto :goto_12

    .line 400
    :cond_4d
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_12
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 292
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 293
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->b()V

    .line 294
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    if-eqz v0, :cond_f

    .line 296
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->e()V

    .line 298
    :cond_f
    const-string v0, "deb6af019f"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/StatSDKService;->onPause(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "mAppkey"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/StatSDKService;->onPause(Landroid/content/Context;Ljava/lang/String;)V

    .line 300
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->g:Lcom/duoku/platform/util/k;

    const-string v1, "onPause"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 307
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 309
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    if-eqz v0, :cond_c

    .line 311
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->k()V

    .line 314
    :cond_c
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->g:Lcom/duoku/platform/util/k;

    const-string v1, "onRestart"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 321
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 323
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    if-eqz v0, :cond_c

    .line 325
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->i()V

    .line 327
    :cond_c
    const-string v0, "deb6af019f"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/StatSDKService;->onResume(Landroid/content/Context;Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "mAppkey"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/StatSDKService;->onResume(Landroid/content/Context;Ljava/lang/String;)V

    .line 329
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->g:Lcom/duoku/platform/util/k;

    const-string v1, "onResume"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 676
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 678
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 336
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 338
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    if-eqz v0, :cond_c

    .line 340
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->j()V

    .line 343
    :cond_c
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->g:Lcom/duoku/platform/util/k;

    const-string v1, "onStart"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 350
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 352
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    if-eqz v0, :cond_c

    .line 354
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/view/c;

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->l()V

    .line 357
    :cond_c
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->b()V

    .line 358
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->g:Lcom/duoku/platform/util/k;

    const-string v1, "onStop"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 359
    return-void
.end method
