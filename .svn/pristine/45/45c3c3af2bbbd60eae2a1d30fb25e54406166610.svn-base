.class public Lcom/baidu/android/pushservice/i/k;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:J


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/android/pushservice/i/k;->a:I

    iput v0, p0, Lcom/baidu/android/pushservice/i/k;->b:I

    iput v0, p0, Lcom/baidu/android/pushservice/i/k;->c:I

    iput v0, p0, Lcom/baidu/android/pushservice/i/k;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/android/pushservice/i/k;->e:J

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, -0x1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Lcom/baidu/android/pushservice/i/k;->a:I

    if-le v1, v3, :cond_11

    const-string v1, "pushad_switch"

    iget v2, p0, Lcom/baidu/android/pushservice/i/k;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_11
    iget v1, p0, Lcom/baidu/android/pushservice/i/k;->b:I

    if-le v1, v3, :cond_1c

    const-string v1, "pushad_maxcount"

    iget v2, p0, Lcom/baidu/android/pushservice/i/k;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1c
    iget v1, p0, Lcom/baidu/android/pushservice/i/k;->c:I

    if-le v1, v3, :cond_27

    const-string v1, "pushad_servermaxcount"

    iget v2, p0, Lcom/baidu/android/pushservice/i/k;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_27
    iget v1, p0, Lcom/baidu/android/pushservice/i/k;->d:I

    if-le v1, v3, :cond_32

    const-string v1, "pushad_curcount"

    iget v2, p0, Lcom/baidu/android/pushservice/i/k;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_32
    iget-wide v2, p0, Lcom/baidu/android/pushservice/i/k;->e:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-lez v1, :cond_41

    const-string v1, "pushad_curtimestamp"

    iget-wide v2, p0, Lcom/baidu/android/pushservice/i/k;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_41
    return-object v0
.end method
