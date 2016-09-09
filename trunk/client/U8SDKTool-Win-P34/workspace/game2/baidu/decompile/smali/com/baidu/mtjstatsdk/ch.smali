.class public Lcom/baidu/mtjstatsdk/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;


# direct methods
.method public constructor <init>(Lcom/baidu/mtjstatsdk/game/BDGameLogSender;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 76
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/ch;->e:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/ch;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/ch;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mtjstatsdk/ch;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/baidu/mtjstatsdk/ch;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 81
    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/ch;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->loadOnlyWifiChannel(Landroid/content/Context;)Z

    move-result v0

    .line 82
    if-eqz v0, :cond_1d

    .line 83
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ch;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 84
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 126
    :cond_1c
    :goto_1c
    return-void

    .line 89
    :cond_1d
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ch;->e:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->a(Lcom/baidu/mtjstatsdk/game/BDGameLogSender;)Lcom/baidu/mtjstatsdk/HeadObject;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ch;->e:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->b(Lcom/baidu/mtjstatsdk/game/BDGameLogSender;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_54

    .line 90
    :cond_2d
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ch;->e:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    new-instance v1, Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-direct {v1}, Lcom/baidu/mtjstatsdk/HeadObject;-><init>()V

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->a(Lcom/baidu/mtjstatsdk/game/BDGameLogSender;Lcom/baidu/mtjstatsdk/HeadObject;)Lcom/baidu/mtjstatsdk/HeadObject;

    .line 91
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ch;->e:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->a(Lcom/baidu/mtjstatsdk/game/BDGameLogSender;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 92
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ch;->e:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->a(Lcom/baidu/mtjstatsdk/game/BDGameLogSender;)Lcom/baidu/mtjstatsdk/HeadObject;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/ch;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/ch;->e:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->b(Lcom/baidu/mtjstatsdk/game/BDGameLogSender;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/ch;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mtjstatsdk/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 96
    :cond_54
    :try_start_54
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ch;->e:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->b(Lcom/baidu/mtjstatsdk/game/BDGameLogSender;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "k"

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/ch;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ch;->e:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->b(Lcom/baidu/mtjstatsdk/game/BDGameLogSender;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ss"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ch;->e:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->b(Lcom/baidu/mtjstatsdk/game/BDGameLogSender;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "st"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ch;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/ch;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/game/BDGameUtil;->readData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 104
    const-string v2, "he"

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/ch;->e:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    invoke-static {v3}, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->b(Lcom/baidu/mtjstatsdk/game/BDGameLogSender;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v2, "pr"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v2, "ev"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v2, "ex"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v2, "gm2"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/ch;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/cx;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ch;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/ch;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 118
    :cond_d9
    iget-boolean v0, p0, Lcom/baidu/mtjstatsdk/ch;->d:Z

    if-eqz v0, :cond_1c

    .line 119
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ch;->e:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/ch;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/ch;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->sendLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_e6
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_e6} :catch_e8
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_e6} :catch_ee

    goto/16 :goto_1c

    .line 121
    :catch_e8
    move-exception v0

    .line 122
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1c

    .line 123
    :catch_ee
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1c
.end method
