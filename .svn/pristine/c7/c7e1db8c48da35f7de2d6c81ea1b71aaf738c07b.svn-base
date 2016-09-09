.class public Lcom/duoku/platform/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/g/b;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    :try_start_3
    invoke-direct {p0}, Lcom/duoku/platform/g/b;->j()V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_6} :catch_7

    .line 58
    :goto_6
    return-void

    .line 53
    :catch_7
    move-exception v0

    .line 55
    invoke-virtual {p0}, Lcom/duoku/platform/g/b;->a()V

    goto :goto_6
.end method

.method public static b()Z
    .registers 2

    .prologue
    .line 215
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 216
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_1f

    .line 218
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    .line 220
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static c()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 232
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_23

    .line 235
    invoke-virtual {v0}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_23

    .line 238
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 239
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_23

    move v0, v1

    .line 246
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public static d()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 258
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 259
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1b

    move v0, v1

    .line 264
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private i()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 62
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/g/b;->a:Landroid/net/Uri;

    .line 63
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 64
    const-string v4, "_id"

    aput-object v4, v2, v7

    const-string v4, "apn"

    aput-object v4, v2, v6

    const/4 v4, 0x2

    const-string v5, "proxy"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "port"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    .line 62
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_7b

    .line 68
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 70
    const-string v1, "apn"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 71
    const-string v2, "proxy"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 72
    const-string v3, "port"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 73
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/g/b;->b:Ljava/lang/String;

    .line 74
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    .line 75
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/g/b;->d:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    if-eqz v1, :cond_94

    iget-object v1, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_94

    .line 78
    const-string v1, "10.0.0.172"

    iget-object v2, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 80
    iput-boolean v6, p0, Lcom/duoku/platform/g/b;->e:Z

    .line 81
    const-string v1, "80"

    iput-object v1, p0, Lcom/duoku/platform/g/b;->d:Ljava/lang/String;

    .line 114
    :cond_78
    :goto_78
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_7b
    return-void

    .line 83
    :cond_7c
    const-string v1, "10.0.0.200"

    iget-object v2, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 85
    iput-boolean v6, p0, Lcom/duoku/platform/g/b;->e:Z

    .line 86
    const-string v1, "80"

    iput-object v1, p0, Lcom/duoku/platform/g/b;->d:Ljava/lang/String;

    goto :goto_78

    .line 90
    :cond_91
    iput-boolean v7, p0, Lcom/duoku/platform/g/b;->e:Z

    goto :goto_78

    .line 93
    :cond_94
    iget-object v1, p0, Lcom/duoku/platform/g/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_d4

    .line 95
    iget-object v1, p0, Lcom/duoku/platform/g/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string v2, "CMWAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b6

    const-string v2, "UNIWAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b6

    const-string v2, "3GWAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 98
    :cond_b6
    iput-boolean v6, p0, Lcom/duoku/platform/g/b;->e:Z

    .line 99
    const-string v1, "10.0.0.172"

    iput-object v1, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    .line 100
    const-string v1, "80"

    iput-object v1, p0, Lcom/duoku/platform/g/b;->d:Ljava/lang/String;

    goto :goto_78

    .line 102
    :cond_c1
    const-string v2, "CTWAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 104
    iput-boolean v6, p0, Lcom/duoku/platform/g/b;->e:Z

    .line 105
    const-string v1, "10.0.0.200"

    iput-object v1, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    .line 106
    const-string v1, "80"

    iput-object v1, p0, Lcom/duoku/platform/g/b;->d:Ljava/lang/String;

    goto :goto_78

    .line 111
    :cond_d4
    iput-boolean v7, p0, Lcom/duoku/platform/g/b;->e:Z

    goto :goto_78
.end method

.method private j()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 199
    :try_start_1
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 200
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_2e

    .line 202
    const-string v1, "wifi"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/g/b;->e:Z

    .line 211
    :cond_2e
    :goto_2e
    return-void

    .line 205
    :cond_2f
    invoke-direct {p0}, Lcom/duoku/platform/g/b;->i()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_33

    goto :goto_2e

    .line 207
    :catch_33
    move-exception v0

    .line 209
    iput-boolean v2, p0, Lcom/duoku/platform/g/b;->e:Z

    goto :goto_2e
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 128
    if-eqz v0, :cond_28

    .line 131
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_28

    .line 135
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 137
    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 141
    iput-boolean v3, p0, Lcom/duoku/platform/g/b;->e:Z

    .line 192
    :cond_28
    :goto_28
    return-void

    .line 144
    :cond_29
    const-string v2, "MOBILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 147
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_7c

    .line 152
    const-string v1, "wap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_79

    .line 155
    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 158
    :cond_58
    iput-boolean v4, p0, Lcom/duoku/platform/g/b;->e:Z

    .line 159
    const-string v0, "10.0.0.172"

    iput-object v0, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    .line 160
    const-string v0, "80"

    iput-object v0, p0, Lcom/duoku/platform/g/b;->d:Ljava/lang/String;

    goto :goto_28

    .line 163
    :cond_63
    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 166
    iput-boolean v4, p0, Lcom/duoku/platform/g/b;->e:Z

    .line 167
    const-string v0, "10.0.0.200"

    iput-object v0, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    .line 168
    const-string v0, "80"

    iput-object v0, p0, Lcom/duoku/platform/g/b;->d:Ljava/lang/String;

    goto :goto_28

    .line 174
    :cond_76
    iput-boolean v3, p0, Lcom/duoku/platform/g/b;->e:Z

    goto :goto_28

    .line 181
    :cond_79
    iput-boolean v3, p0, Lcom/duoku/platform/g/b;->e:Z

    goto :goto_28

    .line 186
    :cond_7c
    iput-boolean v3, p0, Lcom/duoku/platform/g/b;->e:Z

    goto :goto_28
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/duoku/platform/g/b;->e:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/duoku/platform/g/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/duoku/platform/g/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 370
    invoke-static {}, Lcom/duoku/platform/g/b;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 372
    const-string v0, "3"

    .line 382
    :goto_8
    return-object v0

    .line 375
    :cond_9
    invoke-virtual {p0}, Lcom/duoku/platform/g/b;->a()V

    .line 377
    invoke-virtual {p0}, Lcom/duoku/platform/g/b;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 379
    const-string v0, "2"

    goto :goto_8

    .line 382
    :cond_15
    const-string v0, "1"

    goto :goto_8
.end method
