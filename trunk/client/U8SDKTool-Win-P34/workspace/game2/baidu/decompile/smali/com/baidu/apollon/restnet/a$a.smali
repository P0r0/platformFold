.class final Lcom/baidu/apollon/restnet/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/apollon/restnet/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/apollon/restnet/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/apollon/restnet/a;

.field private final b:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Lcom/baidu/apollon/restnet/a;Ljava/lang/Class;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/apollon/restnet/a$a;->a:Lcom/baidu/apollon/restnet/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/baidu/apollon/restnet/a$a;->b:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/apollon/restnet/a;Ljava/lang/Class;Lcom/baidu/apollon/restnet/b;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/baidu/apollon/restnet/a$a;-><init>(Lcom/baidu/apollon/restnet/a;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/baidu/apollon/restnet/b/d;)V
    .registers 7

    iget-object v0, p0, Lcom/baidu/apollon/restnet/a$a;->b:Ljava/lang/Class;

    if-eqz v0, :cond_5f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "RestTemplate"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "RestTemplate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting request Accept header to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_39
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_54
    invoke-interface {p2}, Lcom/baidu/apollon/restnet/b/d;->a()Lcom/baidu/apollon/restnet/http/a;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/apollon/restnet/http/a;->a(Ljava/lang/String;)V

    :cond_5f
    return-void
.end method
