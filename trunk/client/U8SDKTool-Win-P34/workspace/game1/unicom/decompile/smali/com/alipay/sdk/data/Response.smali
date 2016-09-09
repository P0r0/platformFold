.class public Lcom/alipay/sdk/data/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x3e8

.field public static final b:I = 0x1f7

.field public static final c:I


# instance fields
.field d:Lcom/alipay/sdk/data/Envelope;

.field e:[Lorg/apache/http/Header;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lorg/json/JSONObject;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/sdk/data/Response;->f:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/data/Response;->g:Ljava/lang/String;

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/sdk/data/Response;->h:J

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/data/Response;->i:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/alipay/sdk/data/Response;->j:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/alipay/sdk/data/Response;->k:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/alipay/sdk/data/Response;->l:Lorg/json/JSONObject;

    .line 36
    iput-boolean v3, p0, Lcom/alipay/sdk/data/Response;->n:Z

    .line 38
    iput-boolean v3, p0, Lcom/alipay/sdk/data/Response;->o:Z

    .line 43
    iput-object v2, p0, Lcom/alipay/sdk/data/Response;->d:Lcom/alipay/sdk/data/Envelope;

    .line 48
    iput-object v2, p0, Lcom/alipay/sdk/data/Response;->e:[Lorg/apache/http/Header;

    .line 51
    return-void
.end method

.method private o()Ljava/lang/String;
    .registers 5

    .prologue
    .line 173
    const-string v0, ""

    .line 176
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resultStatus={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/data/Response;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "memo={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/data/Response;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "result={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/data/Response;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/alipay/sdk/data/Response;->j:Ljava/lang/String;

    const-string v2, "success=\"true\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 183
    iget-object v1, p0, Lcom/alipay/sdk/data/Response;->j:Ljava/lang/String;

    const-string v2, "call_back_url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 184
    const/4 v2, -0x1

    if-eq v1, v2, :cond_cf

    .line 185
    iget-object v2, p0, Lcom/alipay/sdk/data/Response;->j:Ljava/lang/String;

    const-string v3, "\""

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 186
    iget-object v2, p0, Lcom/alipay/sdk/data/Response;->j:Ljava/lang/String;

    const-string v3, "\""

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 187
    if-lez v1, :cond_cf

    if-le v2, v1, :cond_cf

    .line 188
    iget-object v3, p0, Lcom/alipay/sdk/data/Response;->j:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";callBackUrl={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_ce} :catch_d0

    move-result-object v0

    .line 200
    :cond_cf
    :goto_cf
    return-object v0

    .line 195
    :catch_d0
    move-exception v0

    move-object v1, v0

    .line 196
    iget-object v0, p0, Lcom/alipay/sdk/data/Response;->j:Ljava/lang/String;

    .line 197
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_cf
.end method


# virtual methods
.method public a()Lcom/alipay/sdk/data/Envelope;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/sdk/data/Response;->d:Lcom/alipay/sdk/data/Envelope;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 113
    iput p1, p0, Lcom/alipay/sdk/data/Response;->f:I

    .line 114
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/alipay/sdk/data/Response;->h:J

    .line 158
    return-void
.end method

.method public a(Lcom/alipay/sdk/data/Envelope;)V
    .registers 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/alipay/sdk/data/Response;->d:Lcom/alipay/sdk/data/Envelope;

    .line 170
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alipay/sdk/data/Response;->g:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    .prologue
    .line 161
    iput-object p1, p0, Lcom/alipay/sdk/data/Response;->l:Lorg/json/JSONObject;

    .line 162
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/alipay/sdk/data/Response;->o:Z

    .line 62
    return-void
.end method

.method public a([Lorg/apache/http/Header;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alipay/sdk/data/Response;->e:[Lorg/apache/http/Header;

    .line 154
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alipay/sdk/data/Response;->i:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/alipay/sdk/data/Response;->n:Z

    .line 71
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/alipay/sdk/data/Response;->o:Z

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alipay/sdk/data/Response;->j:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/alipay/sdk/data/Response;->n:Z

    return v0
.end method

.method public d()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/sdk/data/Response;->l:Lorg/json/JSONObject;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alipay/sdk/data/Response;->k:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public e()J
    .registers 3

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/alipay/sdk/data/Response;->h:J

    return-wide v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alipay/sdk/data/Response;->m:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/sdk/data/Response;->i:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/alipay/sdk/data/Response;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/sdk/data/Response;->m:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/alipay/sdk/data/Response;->f:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/sdk/data/Response;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/sdk/data/Response;->i:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/sdk/data/Response;->j:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/sdk/data/Response;->k:Ljava/lang/String;

    return-object v0
.end method

.method public n()[Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/sdk/data/Response;->e:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/sdk/data/Response;->d:Lcom/alipay/sdk/data/Envelope;

    invoke-virtual {v1}, Lcom/alipay/sdk/data/Envelope;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/sdk/data/Response;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/data/Response;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alipay/sdk/data/Response;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/data/Response;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/alipay/sdk/data/Response;->l:Lorg/json/JSONObject;

    if-eqz v1, :cond_60

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reflectedData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/data/Response;->l:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_60
    return-object v0
.end method
