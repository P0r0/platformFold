.class final Lcom/baidu/sapi2/share/b;
.super Ljava/lang/Object;
.source "ShareEncryptor.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/sapi2/share/b;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)Lcom/baidu/sapi2/SapiAccount;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 114
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 115
    :cond_4
    const/4 v0, 0x0

    .line 130
    :goto_5
    return-object v0

    .line 118
    :cond_6
    new-instance v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    .line 119
    .local v0, "encryptedAccount":Lcom/baidu/sapi2/SapiAccount;
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    .line 120
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    .line 121
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    .line 122
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    .line 123
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 124
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    .line 125
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    .line 126
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->email:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->email:Ljava/lang/String;

    .line 127
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    .line 128
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->phone:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->phone:Ljava/lang/String;

    goto :goto_5
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 70
    sget-object v9, Lcom/baidu/sapi2/share/b;->a:Ljava/lang/String;

    if-eqz v9, :cond_b

    .line 71
    sget-object v9, Lcom/baidu/sapi2/share/b;->a:Ljava/lang/String;

    .line 109
    :goto_a
    return-object v9

    .line 73
    :cond_b
    const/16 v5, 0x10

    .line 75
    .local v5, "keyLen":I
    const/4 v2, 0x0

    .line 77
    .local v2, "imei":Ljava/lang/String;
    const/4 v1, 0x0

    .line 78
    .local v1, "blockSize":Ljava/lang/String;
    const/4 v0, 0x0

    .line 80
    .local v0, "blockCount":Ljava/lang/String;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-ge v9, v10, :cond_22

    .line 81
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 85
    :cond_22
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 87
    .local v6, "model":Ljava/lang/String;
    const-string v9, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 88
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 89
    .local v7, "sdcardDir":Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 90
    .local v8, "sf":Landroid/os/StatFs;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .end local v7    # "sdcardDir":Ljava/io/File;
    .end local v8    # "sf":Landroid/os/StatFs;
    :cond_6b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b0

    .line 94
    const-string v9, "%1$s-%2$s-%3$s-%4$s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v11

    aput-object v2, v10, v12

    aput-object v1, v10, v13

    aput-object v0, v10, v14

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "key":Ljava/lang/String;
    :goto_82
    invoke-virtual {v3, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 99
    const-string v4, "----------------"

    .line 100
    .local v4, "keyEnd":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8f

    .line 101
    move-object v3, v4

    .line 104
    :cond_8f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v5, :cond_aa

    .line 105
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v3, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 108
    :cond_aa
    sput-object v3, Lcom/baidu/sapi2/share/b;->a:Ljava/lang/String;

    .line 109
    sget-object v9, Lcom/baidu/sapi2/share/b;->a:Ljava/lang/String;

    goto/16 :goto_a

    .line 96
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keyEnd":Ljava/lang/String;
    :cond_b0
    const-string v9, "%1$s-%2$s-%3$s"

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v6, v10, v11

    aput-object v1, v10, v12

    aput-object v0, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "key":Ljava/lang/String;
    goto :goto_82
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 36
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 46
    :cond_9
    :goto_9
    return-object v3

    .line 40
    :cond_a
    :try_start_a
    new-instance v0, Lcom/baidu/sapi2/utils/a;

    const-string v4, "AES"

    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-direct {v0, v4, v5}, Lcom/baidu/sapi2/utils/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .local v0, "aes":Lcom/baidu/sapi2/utils/a;
    const-string v4, "8070605040302010"

    invoke-static {p0}, Lcom/baidu/sapi2/share/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p1, v4, v5}, Lcom/baidu/sapi2/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 42
    .local v2, "encrypted":[B
    invoke-static {v2}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a([B)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_22

    move-result-object v3

    goto :goto_9

    .line 43
    .end local v0    # "aes":Lcom/baidu/sapi2/utils/a;
    .end local v2    # "encrypted":[B
    :catch_22
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method static b(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)Lcom/baidu/sapi2/SapiAccount;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "encryptedAccount"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 135
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 136
    :cond_4
    const/4 v0, 0x0

    .line 151
    :goto_5
    return-object v0

    .line 139
    :cond_6
    new-instance v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    .line 140
    .local v0, "decryptedAccount":Lcom/baidu/sapi2/SapiAccount;
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    .line 141
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    .line 142
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    .line 143
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    .line 144
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 145
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    .line 146
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    .line 147
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->email:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->email:Ljava/lang/String;

    .line 148
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    .line 149
    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->phone:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->phone:Ljava/lang/String;

    goto :goto_5
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 56
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 66
    :cond_9
    :goto_9
    return-object v3

    .line 60
    :cond_a
    :try_start_a
    new-instance v0, Lcom/baidu/sapi2/utils/a;

    const-string v4, "AES"

    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-direct {v0, v4, v5}, Lcom/baidu/sapi2/utils/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v0, "aes":Lcom/baidu/sapi2/utils/a;
    invoke-static {p1}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->b(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "8070605040302010"

    invoke-static {p0}, Lcom/baidu/sapi2/share/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/baidu/sapi2/utils/a;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 62
    .local v2, "original":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_29} :catch_2b

    move-result-object v3

    goto :goto_9

    .line 63
    .end local v0    # "aes":Lcom/baidu/sapi2/utils/a;
    .end local v2    # "original":[B
    :catch_2b
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_9
.end method
