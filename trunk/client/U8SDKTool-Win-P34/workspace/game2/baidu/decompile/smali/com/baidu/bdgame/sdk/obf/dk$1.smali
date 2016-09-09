.class final Lcom/baidu/bdgame/sdk/obf/dk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dk;->a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/dd;Lcom/baidu/bdgame/sdk/obf/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/o",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/dp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dd;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/baidu/bdgame/sdk/obf/o;

.field final synthetic d:Lcom/baidu/bdgame/sdk/obf/dk;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dk;Lcom/baidu/bdgame/sdk/obf/dd;Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 5

    .prologue
    .line 76
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dk$1;->d:Lcom/baidu/bdgame/sdk/obf/dk;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/dk$1;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/dk$1;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/dk$1;->c:Lcom/baidu/bdgame/sdk/obf/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/dp;)V
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk$1;->d:Lcom/baidu/bdgame/sdk/obf/dk;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dk$1;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dd;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/baidu/bdgame/sdk/obf/dk;->a(Lcom/baidu/bdgame/sdk/obf/dk;Landroid/content/Context;Z)V

    .line 82
    if-nez p1, :cond_68

    if-eqz p3, :cond_68

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/dp;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 84
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/dp;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dr;

    .line 85
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dr;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk$1;->d:Lcom/baidu/bdgame/sdk/obf/dk;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dk$1;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/dd;->k()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/dk;->a(Lcom/baidu/bdgame/sdk/obf/dk;Landroid/content/Context;Z)V

    goto :goto_1f

    .line 90
    :cond_44
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dr;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 91
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dk$1;->d:Lcom/baidu/bdgame/sdk/obf/dk;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/dk$1;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/dk$1;->b:Ljava/util/List;

    invoke-static {v2, v3, v0, v4}, Lcom/baidu/bdgame/sdk/obf/dk;->a(Lcom/baidu/bdgame/sdk/obf/dk;Lcom/baidu/bdgame/sdk/obf/dd;Lcom/baidu/bdgame/sdk/obf/dr;Ljava/util/List;)V

    goto :goto_1f

    .line 97
    :cond_5a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk$1;->c:Lcom/baidu/bdgame/sdk/obf/o;

    if-eqz v0, :cond_67

    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk$1;->c:Lcom/baidu/bdgame/sdk/obf/o;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v5}, Lcom/baidu/bdgame/sdk/obf/q;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 106
    :cond_67
    :goto_67
    return-void

    .line 101
    :cond_68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk$1;->c:Lcom/baidu/bdgame/sdk/obf/o;

    if-eqz v0, :cond_67

    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk$1;->c:Lcom/baidu/bdgame/sdk/obf/o;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1, v5, v5}, Lcom/baidu/bdgame/sdk/obf/q;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_67
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 76
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/dk$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/dp;)V

    return-void
.end method
