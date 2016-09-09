.class public Lcom/baidu/bdgame/sdk/obf/dk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "1"

.field private static final b:Ljava/lang/String; = "2"

.field private static final c:J = 0x42494000L

.field private static final d:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"


# instance fields
.field private e:Lcom/baidu/bdgame/sdk/obf/dq;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/dq;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/dq;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->e:Lcom/baidu/bdgame/sdk/obf/dq;

    .line 49
    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 113
    invoke-static {p1, p2}, Lcom/baidu/bdgame/sdk/obf/mf;->a(Landroid/content/Context;Z)V

    .line 114
    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/dd;Lcom/baidu/bdgame/sdk/obf/dr;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/dd;",
            "Lcom/baidu/bdgame/sdk/obf/dr;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    if-nez p2, :cond_3

    .line 159
    :cond_2
    return-void

    .line 136
    :cond_3
    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/dk;->a(Lcom/baidu/bdgame/sdk/obf/dr;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/dr;->e()Ljava/lang/String;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_2

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 141
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/do;

    invoke-direct {v1, v0}, Lcom/baidu/bdgame/sdk/obf/do;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/do;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/do;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/do;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_44
    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bdgame/sdk/obf/ef;

    .line 145
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ef;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 146
    const/16 v4, 0x63

    invoke-virtual {v1, v4}, Lcom/baidu/bdgame/sdk/obf/ef;->a(I)V

    goto :goto_44
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/dd;Lcom/baidu/bdgame/sdk/obf/ef;)V
    .registers 5

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dd;->l()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dk$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/baidu/bdgame/sdk/obf/dk$2;-><init>(Lcom/baidu/bdgame/sdk/obf/dk;Lcom/baidu/bdgame/sdk/obf/ef;Lcom/baidu/bdgame/sdk/obf/dd;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ek;->a(Landroid/app/Activity;Lcom/baidu/bdgame/sdk/obf/ek$a;)V

    .line 178
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dk;Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/dk;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dk;Lcom/baidu/bdgame/sdk/obf/dd;Lcom/baidu/bdgame/sdk/obf/dr;Ljava/util/List;)V
    .registers 4

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/dk;->a(Lcom/baidu/bdgame/sdk/obf/dd;Lcom/baidu/bdgame/sdk/obf/dr;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/dd;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ef;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/dd;",
            "Lcom/baidu/bdgame/sdk/obf/o;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 68
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 69
    :cond_9
    if-eqz p3, :cond_14

    .line 70
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1, v2, v2}, Lcom/baidu/bdgame/sdk/obf/q;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 109
    :cond_14
    :goto_14
    return-void

    .line 76
    :cond_15
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk;->e:Lcom/baidu/bdgame/sdk/obf/dq;

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/dd;->k()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/dk$1;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/baidu/bdgame/sdk/obf/dk$1;-><init>(Lcom/baidu/bdgame/sdk/obf/dk;Lcom/baidu/bdgame/sdk/obf/dd;Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/o;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/dq;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    goto :goto_14
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 123
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/mf;->i(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/dr;)Z
    .registers 8

    .prologue
    const-wide/32 v4, 0x42494000

    const/4 v0, 0x1

    .line 187
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dr;->b()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 188
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dr;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 189
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/le;->a()J

    move-result-wide v2

    sub-long/2addr v2, v4

    .line 190
    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lt;->a(J)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lt;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/dr;->b(Ljava/lang/String;)V

    .line 192
    :cond_26
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 193
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/le;->a()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 194
    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lt;->a(J)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lt;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/dr;->b(Ljava/lang/String;)V

    .line 196
    :cond_42
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dr;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 197
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dr;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 198
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 199
    invoke-virtual {v3, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-virtual {v3, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 205
    :cond_67
    :goto_67
    return v0

    .line 202
    :cond_68
    const/4 v0, 0x0

    goto :goto_67
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/dd;Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/dd;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ef;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/o;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p2, p1, p3}, Lcom/baidu/bdgame/sdk/obf/dk;->a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/dd;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 63
    return-void
.end method
