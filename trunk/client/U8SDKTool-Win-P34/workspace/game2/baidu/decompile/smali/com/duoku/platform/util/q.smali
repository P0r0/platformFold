.class public Lcom/duoku/platform/util/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field private static g:Lcom/duoku/platform/util/k;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 65
    const-class v0, Lcom/duoku/platform/util/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/util/q;->g:Lcom/duoku/platform/util/k;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/duoku/sdk/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/util/q;->h:Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/util/q;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "userInfo2.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/util/q;->i:Ljava/lang/String;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/util/q;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "userInfo.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/util/q;->j:Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/duoku/sdk/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/util/q;->a:Ljava/lang/String;

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/duoku/sdk/download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/util/q;->b:Ljava/lang/String;

    .line 243
    const-string v0, "duoku/sdk/download"

    sput-object v0, Lcom/duoku/platform/util/q;->c:Ljava/lang/String;

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/duoku/sdk/upload/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/util/q;->d:Ljava/lang/String;

    .line 253
    const-string v0, "logoinfo_h5.txt"

    sput-object v0, Lcom/duoku/platform/util/q;->e:Ljava/lang/String;

    .line 258
    const-string v0, "adinfo.txt"

    sput-object v0, Lcom/duoku/platform/util/q;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 859
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 860
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 431
    const-class v3, Lcom/duoku/platform/util/q;

    monitor-enter v3

    if-eqz p1, :cond_10

    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_29

    move-result v1

    if-gtz v1, :cond_12

    .line 466
    :cond_10
    :goto_10
    monitor-exit v3

    return-object v0

    .line 435
    :cond_12
    const/4 v1, 0x0

    .line 440
    :try_start_13
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_1b} :catch_41
    .catchall {:try_start_13 .. :try_end_1b} :catchall_51

    move-result v2

    if-nez v2, :cond_2c

    .line 456
    if-eqz v0, :cond_10

    .line 458
    :try_start_20
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24
    .catchall {:try_start_20 .. :try_end_23} :catchall_29

    goto :goto_10

    .line 461
    :catch_24
    move-exception v1

    .line 463
    :try_start_25
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_10

    .line 431
    :catchall_29
    move-exception v0

    monitor-exit v3

    throw v0

    .line 445
    :cond_2c
    :try_start_2c
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_31} :catch_41
    .catchall {:try_start_2c .. :try_end_31} :catchall_51

    .line 446
    const/4 v1, 0x0

    :try_start_32
    invoke-static {v2, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_35} :catch_61
    .catchall {:try_start_32 .. :try_end_35} :catchall_5f

    move-result-object v0

    .line 456
    if-eqz v2, :cond_10

    .line 458
    :try_start_38
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c
    .catchall {:try_start_38 .. :try_end_3b} :catchall_29

    goto :goto_10

    .line 461
    :catch_3c
    move-exception v1

    .line 463
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_29

    goto :goto_10

    .line 448
    :catch_41
    move-exception v1

    move-object v2, v0

    .line 450
    :goto_43
    :try_start_43
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_5f

    .line 456
    if-eqz v2, :cond_10

    .line 458
    :try_start_48
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c
    .catchall {:try_start_48 .. :try_end_4b} :catchall_29

    goto :goto_10

    .line 461
    :catch_4c
    move-exception v1

    .line 463
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_29

    goto :goto_10

    .line 453
    :catchall_51
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 456
    :goto_54
    if-eqz v2, :cond_59

    .line 458
    :try_start_56
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a
    .catchall {:try_start_56 .. :try_end_59} :catchall_29

    .line 465
    :cond_59
    :goto_59
    :try_start_59
    throw v0

    .line 461
    :catch_5a
    move-exception v1

    .line 463
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_29

    goto :goto_59

    .line 453
    :catchall_5f
    move-exception v0

    goto :goto_54

    .line 448
    :catch_61
    move-exception v1

    goto :goto_43
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 329
    const-class v3, Lcom/duoku/platform/util/q;

    monitor-enter v3

    .line 334
    :try_start_4
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 338
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 339
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2a} :catch_35
    .catchall {:try_start_4 .. :try_end_2a} :catchall_48

    .line 340
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_5d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_5b

    move-result-object v0

    .line 350
    :goto_2e
    if-eqz v2, :cond_33

    .line 354
    :try_start_30
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_56
    .catchall {:try_start_30 .. :try_end_33} :catchall_45

    .line 364
    :cond_33
    :goto_33
    monitor-exit v3

    return-object v0

    .line 344
    :catch_35
    move-exception v1

    move-object v2, v0

    .line 346
    :goto_37
    :try_start_37
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_5b

    .line 350
    if-eqz v2, :cond_33

    .line 354
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_45

    goto :goto_33

    .line 357
    :catch_40
    move-exception v1

    .line 359
    :try_start_41
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_33

    .line 329
    :catchall_45
    move-exception v0

    monitor-exit v3

    throw v0

    .line 349
    :catchall_48
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 350
    :goto_4b
    if-eqz v2, :cond_50

    .line 354
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51
    .catchall {:try_start_4d .. :try_end_50} :catchall_45

    .line 362
    :cond_50
    :goto_50
    :try_start_50
    throw v0

    .line 357
    :catch_51
    move-exception v1

    .line 359
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    .line 357
    :catch_56
    move-exception v1

    .line 359
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_45

    goto :goto_33

    .line 349
    :catchall_5b
    move-exception v0

    goto :goto_4b

    .line 344
    :catch_5d
    move-exception v1

    goto :goto_37

    :cond_5f
    move-object v2, v0

    goto :goto_2e
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 107
    if-eqz p0, :cond_14

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dk_safe_notice"

    invoke-static {p0, v1}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    :cond_14
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 113
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->finish()V

    .line 115
    :cond_31
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    const/16 v1, 0x7d5

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/duoku/platform/f/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/duoku/platform/DKProCallbackListener;->onSuspendWindowChangeUser(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 269
    const-class v4, Lcom/duoku/platform/util/q;

    monitor-enter v4

    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 271
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 278
    :cond_1e
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_5c

    .line 284
    :try_start_23
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 286
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 290
    :cond_2c
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_31} :catch_49
    .catchall {:try_start_23 .. :try_end_31} :catchall_5f

    .line 291
    :try_start_31
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_7c
    .catchall {:try_start_31 .. :try_end_36} :catchall_74

    .line 292
    :try_start_36
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 293
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 294
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_7f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_76

    .line 302
    if-eqz v3, :cond_47

    .line 306
    :try_start_41
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 307
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_47} :catch_6f
    .catchall {:try_start_41 .. :try_end_47} :catchall_5c

    .line 319
    :cond_47
    :goto_47
    monitor-exit v4

    return-void

    .line 296
    :catch_49
    move-exception v0

    move-object v2, v1

    .line 298
    :goto_4b
    :try_start_4b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_79

    .line 302
    if-eqz v2, :cond_47

    .line 306
    :try_start_50
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 307
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_56} :catch_57
    .catchall {:try_start_50 .. :try_end_56} :catchall_5c

    goto :goto_47

    .line 311
    :catch_57
    move-exception v0

    .line 313
    :try_start_58
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_47

    .line 269
    :catchall_5c
    move-exception v0

    monitor-exit v4

    throw v0

    .line 301
    :catchall_5f
    move-exception v0

    move-object v3, v1

    .line 302
    :goto_61
    if-eqz v3, :cond_69

    .line 306
    :try_start_63
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 307
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_69} :catch_6a
    .catchall {:try_start_63 .. :try_end_69} :catchall_5c

    .line 316
    :cond_69
    :goto_69
    :try_start_69
    throw v0

    .line 311
    :catch_6a
    move-exception v1

    .line 313
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_69

    .line 311
    :catch_6f
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_5c

    goto :goto_47

    .line 301
    :catchall_74
    move-exception v0

    goto :goto_61

    :catchall_76
    move-exception v0

    move-object v1, v2

    goto :goto_61

    :catchall_79
    move-exception v0

    move-object v3, v2

    goto :goto_61

    .line 296
    :catch_7c
    move-exception v0

    move-object v2, v3

    goto :goto_4b

    :catch_7f
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_4b
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 8

    .prologue
    .line 375
    const-class v3, Lcom/duoku/platform/util/q;

    monitor-enter v3

    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11

    .line 378
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 381
    :cond_11
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_42

    move-result v0

    if-nez v0, :cond_30

    .line 384
    const/4 v2, 0x0

    .line 387
    :try_start_1d
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 389
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_32
    .catchall {:try_start_1d .. :try_end_25} :catchall_45

    .line 390
    :try_start_25
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 391
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2b} :catch_59
    .catchall {:try_start_25 .. :try_end_2b} :catchall_57

    .line 404
    if-eqz v1, :cond_30

    .line 408
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_52
    .catchall {:try_start_2d .. :try_end_30} :catchall_42

    .line 418
    :cond_30
    :goto_30
    monitor-exit v3

    return-void

    .line 398
    :catch_32
    move-exception v0

    move-object v1, v2

    .line 400
    :goto_34
    :try_start_34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_57

    .line 404
    if-eqz v1, :cond_30

    .line 408
    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d
    .catchall {:try_start_39 .. :try_end_3c} :catchall_42

    goto :goto_30

    .line 411
    :catch_3d
    move-exception v0

    .line 413
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_30

    .line 375
    :catchall_42
    move-exception v0

    monitor-exit v3

    throw v0

    .line 403
    :catchall_45
    move-exception v0

    move-object v1, v2

    .line 404
    :goto_47
    if-eqz v1, :cond_4c

    .line 408
    :try_start_49
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d
    .catchall {:try_start_49 .. :try_end_4c} :catchall_42

    .line 416
    :cond_4c
    :goto_4c
    :try_start_4c
    throw v0

    .line 411
    :catch_4d
    move-exception v1

    .line 413
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    .line 411
    :catch_52
    move-exception v0

    .line 413
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_42

    goto :goto_30

    .line 403
    :catchall_57
    move-exception v0

    goto :goto_47

    .line 398
    :catch_59
    move-exception v0

    goto :goto_34
.end method

.method public static a()Z
    .registers 3

    .prologue
    .line 77
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/duoku/platform/util/q$1;

    invoke-direct {v2}, Lcom/duoku/platform/util/q$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/k;->e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    .line 98
    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/16 v6, 0x11

    const/4 v1, 0x0

    .line 628
    if-eqz p0, :cond_e

    const/16 v0, 0x12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_f

    .line 653
    :cond_e
    :goto_e
    return v1

    .line 632
    :cond_f
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 633
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 636
    new-array v6, v6, [I

    fill-array-data v6, :array_82

    .line 640
    const/16 v0, 0xb

    new-array v7, v0, [Ljava/lang/String;

    .line 641
    const-string v0, "1"

    aput-object v0, v7, v1

    const-string v0, "0"

    aput-object v0, v7, v3

    const/4 v0, 0x2

    const-string v2, "X"

    aput-object v2, v7, v0

    const/4 v0, 0x3

    const-string v2, "9"

    aput-object v2, v7, v0

    const/4 v0, 0x4

    const-string v2, "8"

    aput-object v2, v7, v0

    const/4 v0, 0x5

    const-string v2, "7"

    aput-object v2, v7, v0

    const/4 v0, 0x6

    const-string v2, "6"

    aput-object v2, v7, v0

    const/4 v0, 0x7

    const-string v2, "5"

    aput-object v2, v7, v0

    const/16 v0, 0x8

    const-string v2, "4"

    aput-object v2, v7, v0

    const/16 v0, 0x9

    const-string v2, "3"

    aput-object v2, v7, v0

    const/16 v0, 0xa

    const-string v2, "2"

    aput-object v2, v7, v0

    move v0, v1

    move v2, v1

    .line 643
    :goto_5a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v0, v8, :cond_6c

    .line 648
    rem-int/lit8 v0, v2, 0xb

    .line 649
    aget-object v0, v7, v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v1, v3

    .line 653
    goto :goto_e

    .line 645
    :cond_6c
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, -0x30

    .line 646
    aget v9, v6, v0

    mul-int/2addr v8, v9

    add-int/2addr v2, v8

    .line 643
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 636
    nop

    :array_82
    .array-data 4
        0x7
        0x9
        0xa
        0x5
        0x8
        0x4
        0x2
        0x1
        0x6
        0x3
        0x7
        0x9
        0xa
        0x5
        0x8
        0x4
        0x2
    .end array-data
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 198
    invoke-static {}, Lcom/duoku/platform/util/l;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 905
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 906
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 907
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 910
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 916
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 917
    return-object v2

    .line 912
    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 913
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 914
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e
.end method

.method public static c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 209
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "channelid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 211
    const-string v0, "channelid"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    if-nez v0, :cond_40

    .line 216
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_32

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 221
    :cond_32
    const-string v0, "13744"

    .line 223
    :cond_34
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 224
    const-string v2, "channelid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 225
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    :cond_40
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 176
    const-string v1, "dk_default_game_name"

    invoke-static {p0, v1}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 181
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_1f} :catch_20

    .line 188
    :goto_1f
    return-object v0

    .line 183
    :catch_20
    move-exception v0

    .line 185
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1f
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 927
    const/4 v0, 0x0

    .line 928
    if-eqz p0, :cond_14

    .line 930
    const-string v1, "duoku"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "pageid="

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 932
    :cond_13
    const/4 v0, 0x1

    .line 935
    :cond_14
    return v0
.end method

.method private static d(Ljava/lang/String;)Lcom/duoku/platform/bean/SynLoginUserInfo;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 751
    .line 752
    new-instance v0, Lcom/duoku/platform/util/a;

    invoke-direct {v0}, Lcom/duoku/platform/util/a;-><init>()V

    .line 753
    invoke-virtual {v0, p0}, Lcom/duoku/platform/util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 755
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 757
    new-instance v0, Lcom/duoku/platform/bean/SynLoginUserInfo;

    invoke-direct {v0}, Lcom/duoku/platform/bean/SynLoginUserInfo;-><init>()V

    .line 760
    :try_start_17
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 761
    const-string v2, "uid"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setDkuid(Ljava/lang/String;)V

    .line 762
    const-string v2, "token"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setDktoken(Ljava/lang/String;)V

    .line 763
    const-string v2, "username"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setUsername(Ljava/lang/String;)V

    .line 764
    const-string v2, "bduserid"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setBduid(Ljava/lang/String;)V

    .line 765
    const-string v2, "logintype"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 766
    packed-switch v2, :pswitch_data_82

    .line 792
    :goto_49
    const-string v2, "postbaidu91uid"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setUid_91(Ljava/lang/String;)V

    .line 793
    const-string v2, "postbaidu91token"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setToken_91(Ljava/lang/String;)V

    .line 794
    const-string v2, "baidu91ramseckey"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setRamseckey_91(Ljava/lang/String;)V

    :goto_64
    move-object v1, v0

    .line 801
    :goto_65
    return-object v1

    .line 770
    :pswitch_66
    sget-object v2, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_VISITOR:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setLogintype(Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;)V

    goto :goto_49

    .line 796
    :catch_6c
    move-exception v0

    goto :goto_65

    .line 775
    :pswitch_6e
    sget-object v2, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_BAIDU:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setLogintype(Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;)V

    goto :goto_49

    .line 780
    :pswitch_74
    sget-object v2, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_DUOKU:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setLogintype(Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;)V

    goto :goto_49

    .line 785
    :pswitch_7a
    sget-object v2, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_91:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setLogintype(Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;)V
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_7f} :catch_6c

    goto :goto_49

    :cond_80
    move-object v0, v1

    goto :goto_64

    .line 766
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_66
        :pswitch_74
        :pswitch_7a
        :pswitch_6e
    .end packed-switch
.end method

.method public static d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 552
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_7} :catch_32

    move-result v0

    if-nez v0, :cond_d

    .line 570
    :goto_a
    const-string v0, ""

    :goto_c
    return-object v0

    .line 554
    :cond_d
    :try_start_d
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 555
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 557
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 558
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_17

    .line 560
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_30
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_30} :catch_32

    move-result-object v0

    goto :goto_c

    .line 565
    :catch_32
    move-exception v0

    goto :goto_a
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 581
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 582
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 583
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 584
    if-nez v0, :cond_15

    move v0, v1

    .line 593
    :goto_14
    return v0

    .line 586
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v1

    .line 593
    goto :goto_14

    .line 586
    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 588
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v0, v4, :cond_19

    .line 590
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public static e()Lcom/duoku/platform/bean/SynLoginUserInfo;
    .registers 2

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 683
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 685
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/d/i;->a(Landroid/content/Context;)Lcom/duoku/platform/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/d/i;->a()Lcom/duoku/platform/bean/SynLoginUserInfo;

    move-result-object v0

    .line 688
    :cond_1b
    return-object v0
.end method

.method private static e(Ljava/lang/String;)Lcom/duoku/platform/bean/SynLoginUserInfo;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 806
    .line 807
    new-instance v0, Lcom/duoku/platform/util/a;

    invoke-direct {v0}, Lcom/duoku/platform/util/a;-><init>()V

    .line 808
    invoke-virtual {v0, p0}, Lcom/duoku/platform/util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 811
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 813
    new-instance v0, Lcom/duoku/platform/bean/SynLoginUserInfo;

    invoke-direct {v0}, Lcom/duoku/platform/bean/SynLoginUserInfo;-><init>()V

    .line 817
    :try_start_17
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 818
    const-string v2, "uid"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setDkuid(Ljava/lang/String;)V

    .line 819
    const-string v2, "token"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setDktoken(Ljava/lang/String;)V

    .line 820
    const-string v2, "username"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setUsername(Ljava/lang/String;)V

    .line 822
    const-string v2, "logintype"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 823
    packed-switch v2, :pswitch_data_52

    :goto_40
    move-object v1, v0

    .line 851
    :goto_41
    :pswitch_41
    return-object v1

    .line 833
    :pswitch_42
    sget-object v2, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_BAIDU:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setLogintype(Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;)V

    goto :goto_40

    .line 846
    :catch_48
    move-exception v0

    goto :goto_41

    .line 839
    :pswitch_4a
    sget-object v2, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_DUOKU:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setLogintype(Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;)V
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_4f} :catch_48

    goto :goto_40

    :cond_50
    move-object v0, v1

    goto :goto_40

    .line 823
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_42
        :pswitch_41
    .end packed-switch
.end method

.method public static e(Landroid/content/Context;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 874
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 876
    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 877
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 879
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 892
    return-object v1

    .line 879
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 882
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-gtz v3, :cond_2c

    .line 884
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 887
    :cond_2c
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_13

    .line 889
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method public static f(Landroid/content/Context;)I
    .registers 5

    .prologue
    .line 947
    const/4 v0, -0x1

    .line 950
    :try_start_1
    const-string v1, "com.android.internal.R$dimen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 951
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 952
    const-string v3, "status_bar_height"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 953
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_26

    move-result v0

    .line 960
    :goto_25
    return v0

    .line 956
    :catch_26
    move-exception v1

    .line 958
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method public static f()Lcom/duoku/platform/bean/SynLoginUserInfo;
    .registers 7

    .prologue
    .line 698
    const/4 v2, 0x0

    .line 699
    const-string v1, ""

    .line 700
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/duoku/platform/util/q;->i:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 705
    :try_start_10
    new-instance v0, Ljava/io/FileInputStream;

    sget-object v3, Lcom/duoku/platform/util/q;->i:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 706
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 707
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 708
    :goto_26
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_66

    .line 712
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 713
    invoke-static {v1}, Lcom/duoku/platform/util/q;->d(Ljava/lang/String;)Lcom/duoku/platform/bean/SynLoginUserInfo;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_32} :catch_7e

    move-result-object v0

    .line 721
    :goto_33
    if-nez v0, :cond_65

    .line 723
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/duoku/platform/util/q;->j:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 728
    :try_start_42
    new-instance v2, Ljava/io/FileInputStream;

    sget-object v3, Lcom/duoku/platform/util/q;->j:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 729
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 730
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 731
    :goto_58
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_84

    .line 735
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 736
    invoke-static {v1}, Lcom/duoku/platform/util/q;->e(Ljava/lang/String;)Lcom/duoku/platform/bean/SynLoginUserInfo;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_64} :catch_9c

    move-result-object v0

    .line 746
    :cond_65
    :goto_65
    return-object v0

    .line 710
    :cond_66
    :try_start_66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_7c} :catch_7e

    move-result-object v1

    goto :goto_26

    .line 715
    :catch_7e
    move-exception v0

    .line 717
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_82
    move-object v0, v2

    goto :goto_33

    .line 733
    :cond_84
    :try_start_84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_9a} :catch_9c

    move-result-object v1

    goto :goto_58

    .line 738
    :catch_9c
    move-exception v1

    .line 740
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_65
.end method
