.class public Lcom/gionee/game/offlinesdk/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gionee/game/offlinesdk/utils/Utils$OnVersionsChangeListener;
    }
.end annotation


# static fields
.field private static final NULL_FLAGS:I = 0x0

.field private static final STR_NULL:Ljava/lang/String; = "null"

.field private static final VERSION_CODES_LOLLIPOP:I = 0x15


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static byteArrayToString([B)Ljava/lang/String;
    .registers 5
    .param p0, "bytes"    # [B

    .prologue
    const/16 v3, 0x10

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 201
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_29

    .line 202
    aget-byte v2, p0, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 205
    :cond_29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 238
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 240
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getAppName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 160
    :try_start_0
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 161
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lcom/gionee/game/offlinesdk/utils/Utils;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 162
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_15} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v2

    .line 166
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_16
    return-object v2

    .line 164
    :catch_17
    move-exception v2

    .line 166
    :goto_18
    const-string v2, ""

    goto :goto_16

    .line 163
    :catch_1b
    move-exception v2

    goto :goto_18
.end method

.method public static getAppVersionCode(Ljava/lang/String;)I
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 140
    :try_start_0
    invoke-static {p0}, Lcom/gionee/game/offlinesdk/utils/Utils;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    .line 142
    :goto_6
    return v1

    .line 141
    :catch_7
    move-exception v0

    .line 142
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public static getAppVersionName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 148
    :try_start_0
    invoke-static {p0}, Lcom/gionee/game/offlinesdk/utils/Utils;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    .line 150
    :goto_6
    return-object v1

    .line 149
    :catch_7
    move-exception v0

    .line 150
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, ""

    goto :goto_6
.end method

.method public static getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 71
    .local v2, "drawableTemp":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 72
    .local v3, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "game/drawable/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "drawableFile":Ljava/lang/String;
    :try_start_19
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    invoke-static {v4, v5, v3, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2c} :catch_33
    .catchall {:try_start_19 .. :try_end_2c} :catchall_3c

    move-result-object v2

    .line 80
    if-eqz v3, :cond_32

    .line 81
    :try_start_2f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_43

    .line 86
    :cond_32
    :goto_32
    return-object v2

    .line 77
    :catch_33
    move-exception v4

    .line 80
    if-eqz v3, :cond_32

    .line 81
    :try_start_36
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_32

    .line 83
    :catch_3a
    move-exception v4

    goto :goto_32

    .line 79
    :catchall_3c
    move-exception v4

    .line 80
    if-eqz v3, :cond_42

    .line 81
    :try_start_3f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_45

    .line 84
    :cond_42
    :goto_42
    throw v4

    .line 83
    :catch_43
    move-exception v4

    goto :goto_32

    :catch_45
    move-exception v5

    goto :goto_42
.end method

.method public static getFileMd5(Ljava/io/File;)Ljava/lang/String;
    .registers 10
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 170
    const/4 v3, 0x0

    .line 171
    .local v3, "digest":[B
    const/4 v5, 0x0

    .line 172
    .local v5, "in":Ljava/io/FileInputStream;
    if-nez p0, :cond_7

    .line 173
    const-string v7, "null"

    .line 196
    :goto_6
    return-object v7

    .line 176
    :cond_7
    :try_start_7
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 177
    .local v4, "digester":Ljava/security/MessageDigest;
    const/16 v7, 0x2000

    new-array v1, v7, [B

    .line 178
    .local v1, "bytes":[B
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_58
    .catchall {:try_start_7 .. :try_end_16} :catchall_44

    .line 180
    .end local v5    # "in":Ljava/io/FileInputStream;
    .local v6, "in":Ljava/io/FileInputStream;
    :goto_16
    :try_start_16
    invoke-virtual {v6, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .local v0, "byteCount":I
    if-lez v0, :cond_36

    .line 181
    const/4 v7, 0x0

    invoke-virtual {v4, v1, v7, v0}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_20} :catch_21
    .catchall {:try_start_16 .. :try_end_20} :catchall_55

    goto :goto_16

    .line 184
    .end local v0    # "byteCount":I
    :catch_21
    move-exception v2

    move-object v5, v6

    .line 185
    .end local v1    # "bytes":[B
    .end local v4    # "digester":Ljava/security/MessageDigest;
    .end local v6    # "in":Ljava/io/FileInputStream;
    .local v2, "cause":Ljava/lang/Exception;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :goto_23
    :try_start_23
    const-string v7, "test"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_44

    .line 187
    if-eqz v5, :cond_32

    .line 189
    :try_start_2e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_51

    .line 190
    const/4 v5, 0x0

    .line 196
    .end local v2    # "cause":Ljava/lang/Exception;
    :cond_32
    :goto_32
    if-nez v3, :cond_4c

    const/4 v7, 0x0

    goto :goto_6

    .line 183
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "byteCount":I
    .restart local v1    # "bytes":[B
    .restart local v4    # "digester":Ljava/security/MessageDigest;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    :cond_36
    :try_start_36
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_21
    .catchall {:try_start_36 .. :try_end_39} :catchall_55

    move-result-object v3

    .line 187
    if-eqz v6, :cond_5a

    .line 189
    :try_start_3c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_41

    .line 190
    const/4 v5, 0x0

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    goto :goto_32

    .line 191
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    :catch_41
    move-exception v7

    move-object v5, v6

    .line 192
    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    goto :goto_32

    .line 187
    .end local v0    # "byteCount":I
    .end local v1    # "bytes":[B
    .end local v4    # "digester":Ljava/security/MessageDigest;
    :catchall_44
    move-exception v7

    :goto_45
    if-eqz v5, :cond_4b

    .line 189
    :try_start_47
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_53

    .line 190
    const/4 v5, 0x0

    .line 192
    :cond_4b
    :goto_4b
    throw v7

    .line 196
    :cond_4c
    invoke-static {v3}, Lcom/gionee/game/offlinesdk/utils/Utils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 191
    .restart local v2    # "cause":Ljava/lang/Exception;
    :catch_51
    move-exception v7

    goto :goto_32

    .end local v2    # "cause":Ljava/lang/Exception;
    :catch_53
    move-exception v8

    goto :goto_4b

    .line 187
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "bytes":[B
    .restart local v4    # "digester":Ljava/security/MessageDigest;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    :catchall_55
    move-exception v7

    move-object v5, v6

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    goto :goto_45

    .line 184
    .end local v1    # "bytes":[B
    .end local v4    # "digester":Ljava/security/MessageDigest;
    :catch_58
    move-exception v2

    goto :goto_23

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "byteCount":I
    .restart local v1    # "bytes":[B
    .restart local v4    # "digester":Ljava/security/MessageDigest;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    :cond_5a
    move-object v5, v6

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    goto :goto_32
.end method

.method private static getNewTopActivityPkgName(Landroid/app/ActivityManager;)Ljava/lang/String;
    .registers 8
    .param p0, "activityManager"    # Landroid/app/ActivityManager;

    .prologue
    .line 285
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 286
    .local v1, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v1, :cond_9

    .line 287
    const-string v5, ""

    .line 299
    .end local v1    # "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_8
    :goto_8
    return-object v5

    .line 290
    .restart local v1    # "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 291
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 292
    .local v4, "importance":I
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 293
    .local v5, "processName":Ljava/lang/String;
    const/16 v6, 0x64

    if-eq v4, v6, :cond_8

    const/16 v6, 0xc8

    if-ne v4, v6, :cond_d

    goto :goto_8

    .line 297
    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "importance":I
    .end local v5    # "processName":Ljava/lang/String;
    :cond_26
    const-string v5, ""
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_8

    .line 298
    .end local v1    # "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_29
    move-exception v2

    .line 299
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, ""

    goto :goto_8
.end method

.method private static getOldTopActivityPkgName(Landroid/app/ActivityManager;)Ljava/lang/String;
    .registers 6
    .param p0, "activityManager"    # Landroid/app/ActivityManager;

    .prologue
    .line 272
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 273
    .local v1, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_16

    .line 275
    const-string v2, ""
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    .line 279
    .end local v1    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_16
    :goto_16
    return-object v2

    .line 278
    :catch_17
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_16
.end method

.method public static getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 131
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenRect()Landroid/graphics/Rect;
    .registers 4

    .prologue
    .line 44
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    .local v0, "context":Landroid/content/Context;
    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 46
    .local v2, "windowManager":Landroid/view/WindowManager;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 47
    .local v1, "outSize":Landroid/graphics/Rect;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 48
    return-object v1
.end method

.method public static getStateListDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .registers 12
    .param p0, "normal"    # Landroid/graphics/drawable/Drawable;
    .param p1, "focused"    # Landroid/graphics/drawable/Drawable;
    .param p2, "pressed"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 90
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 91
    .local v0, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x6

    new-array v1, v2, [[I

    .line 92
    .local v1, "states":[[I
    new-array v2, v6, [I

    fill-array-data v2, :array_54

    aput-object v2, v1, v5

    .line 93
    new-array v2, v6, [I

    fill-array-data v2, :array_5c

    aput-object v2, v1, v4

    .line 94
    new-array v2, v4, [I

    const v3, 0x101009e

    aput v3, v2, v5

    aput-object v2, v1, v6

    .line 95
    new-array v2, v6, [I

    fill-array-data v2, :array_64

    aput-object v2, v1, v7

    .line 96
    const/4 v2, 0x4

    new-array v3, v4, [I

    const v4, 0x101009d

    aput v4, v3, v5

    aput-object v3, v1, v2

    .line 97
    new-array v2, v5, [I

    aput-object v2, v1, v8

    .line 98
    aget-object v2, v1, v5

    invoke-virtual {v0, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 99
    aget-object v2, v1, v7

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 100
    aget-object v2, v1, v6

    invoke-virtual {v0, v2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 101
    aget-object v2, v1, v8

    const-string v3, "gionee/drawable/download_button_state_disable.jpg"

    invoke-static {v3}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 102
    return-object v0

    .line 92
    :array_54
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 93
    :array_5c
    .array-data 4
        0x101009e
        0x101009c
    .end array-data

    .line 95
    :array_64
    .array-data 4
        0x101009c
        0x101009d
    .end array-data
.end method

.method public static getStateListDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .registers 7
    .param p0, "normal"    # Ljava/lang/String;
    .param p1, "focused"    # Ljava/lang/String;
    .param p2, "pressed"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p0}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 107
    .local v1, "normalDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    .local v0, "focusedDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p2}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 109
    .local v2, "pressedDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v0, v2}, Lcom/gionee/game/offlinesdk/utils/Utils;->getStateListDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    return-object v3
.end method

.method public static getStringFromAssetsFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 209
    const/4 v5, 0x0

    .line 210
    .local v5, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 211
    .local v1, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 213
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_3
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 214
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_63
    .catchall {:try_start_3 .. :try_end_14} :catchall_50

    .line 215
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 216
    .local v2, "len":I
    const/16 v7, 0x400

    :try_start_17
    new-array v0, v7, [B

    .line 217
    .local v0, "buffer":[B
    :goto_19
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_31

    .line 218
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_23} :catch_24
    .catchall {:try_start_17 .. :try_end_23} :catchall_5e

    goto :goto_19

    .line 222
    .end local v0    # "buffer":[B
    :catch_24
    move-exception v7

    move-object v3, v4

    .line 225
    .end local v2    # "len":I
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_26
    if-eqz v1, :cond_2b

    .line 226
    :try_start_28
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 228
    :cond_2b
    if-eqz v3, :cond_30

    .line 229
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_61

    .line 234
    :cond_30
    :goto_30
    return-object v5

    .line 220
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "len":I
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_31
    :try_start_31
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 221
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3f} :catch_24
    .catchall {:try_start_31 .. :try_end_3f} :catchall_5e

    .line 225
    .end local v5    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    if-eqz v1, :cond_44

    .line 226
    :try_start_41
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 228
    :cond_44
    if-eqz v4, :cond_49

    .line 229
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_49} :catch_4c

    :cond_49
    move-object v3, v4

    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .line 232
    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_30

    .line 231
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "result":Ljava/lang/String;
    :catch_4c
    move-exception v7

    move-object v3, v4

    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .line 233
    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_30

    .line 224
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    :catchall_50
    move-exception v7

    .line 225
    :goto_51
    if-eqz v1, :cond_56

    .line 226
    :try_start_53
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 228
    :cond_56
    if-eqz v3, :cond_5b

    .line 229
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5b} :catch_5c

    .line 232
    :cond_5b
    :goto_5b
    throw v7

    .line 231
    :catch_5c
    move-exception v8

    goto :goto_5b

    .line 224
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "len":I
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    :catchall_5e
    move-exception v7

    move-object v3, v4

    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    goto :goto_51

    .line 231
    .end local v2    # "len":I
    :catch_61
    move-exception v7

    goto :goto_30

    .line 222
    :catch_63
    move-exception v7

    goto :goto_26
.end method

.method public static getTopActivityPkgName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 257
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 258
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/Utils;->isLollipop()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 259
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/Utils;->getNewTopActivityPkgName(Landroid/app/ActivityManager;)Ljava/lang/String;

    move-result-object v1

    .line 261
    :goto_16
    return-object v1

    :cond_17
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/Utils;->getOldTopActivityPkgName(Landroid/app/ActivityManager;)Ljava/lang/String;

    move-result-object v1

    goto :goto_16
.end method

.method public static getUTF8Code(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 114
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 116
    :goto_6
    return-object v1

    .line 115
    :catch_7
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "null"

    goto :goto_6
.end method

.method public static getVersionCode()I
    .registers 1

    .prologue
    .line 135
    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/Utils;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/Utils;->getAppVersionCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static hasNetwork()Z
    .registers 1

    .prologue
    .line 244
    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/Utils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isAppInstalled(Ljava/lang/String;)Z
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 122
    :try_start_0
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_f

    .line 124
    const/4 v2, 0x1

    .line 126
    .end local v0    # "context":Landroid/content/Context;
    :goto_e
    return v2

    .line 125
    :catch_f
    move-exception v1

    .line 126
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static isLollipop()Z
    .registers 2

    .prologue
    .line 266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isMapValid(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isStrValid(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "normal"    # Landroid/graphics/drawable/Drawable;
    .param p2, "focused"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 59
    invoke-static {p1, p2, p2}, Lcom/gionee/game/offlinesdk/utils/Utils;->getStateListDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 60
    .local v0, "background":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    return-void
.end method

.method private static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "normal"    # Landroid/graphics/drawable/Drawable;
    .param p2, "focused"    # Landroid/graphics/drawable/Drawable;
    .param p3, "pressed"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 64
    invoke-static {p1, p2, p3}, Lcom/gionee/game/offlinesdk/utils/Utils;->getStateListDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 65
    .local v0, "background":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    return-void
.end method

.method public static setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "normal"    # Ljava/lang/String;
    .param p2, "pressed"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p1}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 53
    .local v1, "normalDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p2}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 54
    .local v0, "focusedDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p2}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 55
    .local v2, "pressedDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v1, v0, v2}, Lcom/gionee/game/offlinesdk/utils/Utils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method
