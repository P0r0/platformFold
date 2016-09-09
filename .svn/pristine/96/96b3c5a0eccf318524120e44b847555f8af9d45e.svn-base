.class public Lcom/baidu/bdgame/sdk/obf/ch;
.super Lcom/baidu/bdgame/sdk/obf/ci;
.source "SourceFile"


# static fields
.field public static final a:I = 0xc9

.field public static final b:I = 0xca

.field public static final c:I = 0xcb

.field public static final d:I = 0xcc

.field public static final e:I = 0xcd

.field public static final f:I = 0xce

.field public static final g:I = 0xcf

.field public static final h:I = 0xd0

.field public static final i:I = 0xd1

.field public static final j:I = 0xd2

.field public static final k:I = 0xd3

.field public static final l:I = 0xd4

.field public static final m:I = 0xd5

.field public static final n:I = 0xd6

.field public static final o:I = 0xd7

.field public static final p:I = 0xd8

.field public static final q:I = 0xd9

.field public static final r:I = 0xda

.field public static final s:I = 0xdb

.field public static final t:I = 0xdc

.field public static final u:I = 0xdd

.field public static final v:I = 0xde

.field public static final w:I = 0xdf

.field public static final x:I = 0xe0


# direct methods
.method protected constructor <init>(I)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ci;-><init>(I)V

    .line 19
    return-void
.end method

.method public static a(I)Lcom/baidu/bdgame/sdk/obf/ch;
    .registers 2

    .prologue
    .line 22
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/ch;-><init>(I)V

    .line 23
    return-object v0
.end method


# virtual methods
.method public a(Z)Lcom/baidu/bdgame/sdk/obf/ci;
    .registers 7

    .prologue
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 29
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 30
    const-string v0, "devicestart"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v4, "state"

    if-eqz p1, :cond_1f

    const-string v0, "1"

    :goto_18
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ci;

    .line 36
    :goto_1e
    return-object p0

    .line 31
    :cond_1f
    const-string v0, "0"
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_21} :catch_22

    goto :goto_18

    .line 33
    :catch_22
    move-exception v0

    .line 34
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "build performance tag fail: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method
