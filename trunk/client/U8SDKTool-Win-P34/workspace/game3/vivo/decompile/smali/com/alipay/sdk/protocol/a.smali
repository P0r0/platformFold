.class public final enum Lcom/alipay/sdk/protocol/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/sdk/protocol/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alipay/sdk/protocol/a;

.field public static final enum b:Lcom/alipay/sdk/protocol/a;

.field public static final enum c:Lcom/alipay/sdk/protocol/a;

.field public static final enum d:Lcom/alipay/sdk/protocol/a;

.field public static final enum e:Lcom/alipay/sdk/protocol/a;

.field public static final enum f:Lcom/alipay/sdk/protocol/a;

.field public static final enum g:Lcom/alipay/sdk/protocol/a;

.field private static final synthetic v:[Lcom/alipay/sdk/protocol/a;


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lorg/json/JSONObject;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/alipay/sdk/protocol/a;

    const-string v1, "WapPay"

    const-string v2, "js://wappay"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/sdk/protocol/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/a;->a:Lcom/alipay/sdk/protocol/a;

    .line 15
    new-instance v0, Lcom/alipay/sdk/protocol/a;

    const-string v1, "DownLoad"

    const-string v2, "js://download"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/sdk/protocol/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/a;->b:Lcom/alipay/sdk/protocol/a;

    .line 17
    new-instance v0, Lcom/alipay/sdk/protocol/a;

    const-string v1, "Submit"

    const-string v2, "submit"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/sdk/protocol/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/a;->c:Lcom/alipay/sdk/protocol/a;

    .line 19
    new-instance v0, Lcom/alipay/sdk/protocol/a;

    const-string v1, "Confirm"

    const-string v2, "js://confirm"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/sdk/protocol/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/a;->d:Lcom/alipay/sdk/protocol/a;

    .line 21
    new-instance v0, Lcom/alipay/sdk/protocol/a;

    const-string v1, "Alert"

    const-string v2, "js://alert"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/sdk/protocol/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/a;->e:Lcom/alipay/sdk/protocol/a;

    .line 23
    new-instance v0, Lcom/alipay/sdk/protocol/a;

    const-string v1, "Update"

    const/4 v2, 0x5

    const-string v3, "js://update"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/protocol/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/a;->f:Lcom/alipay/sdk/protocol/a;

    .line 25
    new-instance v0, Lcom/alipay/sdk/protocol/a;

    const-string v1, "Exit"

    const/4 v2, 0x6

    const-string v3, "js://exit"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/protocol/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/a;->g:Lcom/alipay/sdk/protocol/a;

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alipay/sdk/protocol/a;

    sget-object v1, Lcom/alipay/sdk/protocol/a;->a:Lcom/alipay/sdk/protocol/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/sdk/protocol/a;->b:Lcom/alipay/sdk/protocol/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/sdk/protocol/a;->c:Lcom/alipay/sdk/protocol/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/sdk/protocol/a;->d:Lcom/alipay/sdk/protocol/a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/sdk/protocol/a;->e:Lcom/alipay/sdk/protocol/a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/sdk/protocol/a;->f:Lcom/alipay/sdk/protocol/a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/sdk/protocol/a;->g:Lcom/alipay/sdk/protocol/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/sdk/protocol/a;->v:[Lcom/alipay/sdk/protocol/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/alipay/sdk/protocol/a;->h:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static a(Lcom/alipay/sdk/protocol/b;)[Lcom/alipay/sdk/protocol/a;
    .registers 14

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 107
    if-eqz p0, :cond_8a

    .line 109
    iget-object v1, p0, Lcom/alipay/sdk/protocol/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_93

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 110
    :goto_14
    if-nez v7, :cond_1d

    .line 111
    new-array v0, v3, [Lcom/alipay/sdk/protocol/a;

    .line 112
    sget-object v1, Lcom/alipay/sdk/protocol/a;->c:Lcom/alipay/sdk/protocol/a;

    aput-object v1, v0, v4

    .line 146
    :goto_1c
    return-object v0

    .line 115
    :cond_1d
    array-length v0, v7

    new-array v2, v0, [Lcom/alipay/sdk/protocol/a;

    .line 117
    array-length v8, v7

    move v3, v4

    move v5, v4

    :goto_23
    if-ge v3, v8, :cond_88

    aget-object v9, v7, v3

    .line 118
    sget-object v1, Lcom/alipay/sdk/protocol/a;->c:Lcom/alipay/sdk/protocol/a;

    .line 119
    invoke-static {}, Lcom/alipay/sdk/protocol/a;->values()[Lcom/alipay/sdk/protocol/a;

    move-result-object v10

    array-length v11, v10

    move v6, v4

    :goto_2f
    if-ge v6, v11, :cond_91

    aget-object v0, v10, v6

    .line 120
    iget-object v12, v0, Lcom/alipay/sdk/protocol/a;->h:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_84

    .line 126
    :goto_3b
    iput-object v9, v0, Lcom/alipay/sdk/protocol/a;->i:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/alipay/sdk/protocol/b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    sget-object v1, Lcom/alipay/sdk/cons/a;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/sdk/protocol/b;->b:Ljava/lang/String;

    :cond_49
    iget-object v1, p0, Lcom/alipay/sdk/protocol/b;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/sdk/protocol/a;->j:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/alipay/sdk/protocol/b;->a()Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/sdk/protocol/a;->k:Lorg/json/JSONObject;

    .line 129
    iget-object v1, p0, Lcom/alipay/sdk/protocol/b;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/sdk/protocol/a;->l:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/alipay/sdk/protocol/b;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/sdk/protocol/a;->m:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/alipay/sdk/protocol/b;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/sdk/protocol/a;->n:Ljava/lang/String;

    .line 132
    iget-boolean v1, p0, Lcom/alipay/sdk/protocol/b;->f:Z

    iput-boolean v1, v0, Lcom/alipay/sdk/protocol/a;->o:Z

    .line 133
    iget-boolean v1, p0, Lcom/alipay/sdk/protocol/b;->g:Z

    iput-boolean v1, v0, Lcom/alipay/sdk/protocol/a;->p:Z

    .line 134
    iget-boolean v1, p0, Lcom/alipay/sdk/protocol/b;->h:Z

    iput-boolean v1, v0, Lcom/alipay/sdk/protocol/a;->q:Z

    .line 135
    iget-object v1, p0, Lcom/alipay/sdk/protocol/b;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/sdk/protocol/a;->r:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/alipay/sdk/protocol/b;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/sdk/protocol/a;->s:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/alipay/sdk/protocol/b;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/sdk/protocol/a;->t:Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/alipay/sdk/protocol/b;->l:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/alipay/sdk/protocol/a;->u:Lorg/json/JSONObject;

    .line 139
    aput-object v0, v2, v5

    .line 140
    add-int/lit8 v1, v5, 0x1

    .line 117
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v1

    goto :goto_23

    .line 119
    :cond_84
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2f

    :cond_88
    move-object v0, v2

    .line 142
    goto :goto_1c

    .line 143
    :cond_8a
    new-array v0, v3, [Lcom/alipay/sdk/protocol/a;

    .line 144
    sget-object v1, Lcom/alipay/sdk/protocol/a;->c:Lcom/alipay/sdk/protocol/a;

    aput-object v1, v0, v4

    goto :goto_1c

    :cond_91
    move-object v0, v1

    goto :goto_3b

    :cond_93
    move-object v7, v0

    goto :goto_14
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 101
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_d
    return-object v0
.end method

.method private m()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/sdk/protocol/a;->k:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/sdk/protocol/a;
    .registers 2

    .prologue
    .line 11
    const-class v0, Lcom/alipay/sdk/protocol/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/protocol/a;

    return-object v0
.end method

.method public static values()[Lcom/alipay/sdk/protocol/a;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/alipay/sdk/protocol/a;->v:[Lcom/alipay/sdk/protocol/a;

    invoke-virtual {v0}, [Lcom/alipay/sdk/protocol/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/sdk/protocol/a;

    return-object v0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/sdk/protocol/a;->u:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/sdk/protocol/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/sdk/protocol/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/sdk/protocol/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/sdk/protocol/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/sdk/protocol/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/sdk/protocol/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/sdk/protocol/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/alipay/sdk/protocol/a;->o:Z

    return v0
.end method

.method public final j()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/alipay/sdk/protocol/a;->p:Z

    return v0
.end method

.method public final k()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/alipay/sdk/protocol/a;->q:Z

    return v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/sdk/protocol/a;->l:Ljava/lang/String;

    return-object v0
.end method
