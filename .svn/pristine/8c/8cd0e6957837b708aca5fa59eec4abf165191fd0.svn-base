.class Lcom/baidu/sapi2/a$a;
.super Ljava/lang/Object;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static c:I


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/a$a;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/baidu/sapi2/a$a;->a:Landroid/content/Context;

    .line 196
    invoke-virtual {p0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 197
    invoke-direct {p0}, Lcom/baidu/sapi2/a$a;->e()V

    .line 198
    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 187
    sget-object v0, Lcom/baidu/sapi2/a$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 188
    sget-object v0, Lcom/baidu/sapi2/a$a;->b:Ljava/util/List;

    const-string v1, "http://119.75.220.29"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lcom/baidu/sapi2/a$a;->b:Ljava/util/List;

    const-string v1, "http://220.181.111.48"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/baidu/sapi2/a$a;->b:Ljava/util/List;

    const-string v1, "http://123.125.115.81"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 201
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "domain":Ljava/lang/String;
    sget v1, Lcom/baidu/sapi2/a$a;->c:I

    if-lez v1, :cond_2b

    .line 203
    sget v1, Lcom/baidu/sapi2/a$a;->c:I

    sget-object v2, Lcom/baidu/sapi2/a$a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_1f

    .line 204
    const/4 v1, 0x1

    sput v1, Lcom/baidu/sapi2/a$a;->c:I

    .line 206
    :cond_1f
    sget-object v1, Lcom/baidu/sapi2/a$a;->b:Ljava/util/List;

    sget v2, Lcom/baidu/sapi2/a$a;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "domain":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 208
    .restart local v0    # "domain":Ljava/lang/String;
    :cond_2b
    return-object v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 212
    sget v0, Lcom/baidu/sapi2/a$a;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/sapi2/a$a;->c:I

    .line 213
    return-void
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 216
    sget v0, Lcom/baidu/sapi2/a$a;->c:I

    sget-object v1, Lcom/baidu/sapi2/a$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public d()V
    .registers 2

    .prologue
    .line 220
    const/4 v0, 0x0

    sput v0, Lcom/baidu/sapi2/a$a;->c:I

    .line 221
    return-void
.end method
