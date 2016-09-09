.class final Lcom/baidu/bdgame/sdk/obf/ed$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ed$a;->a()V
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
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ed$a;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ed$a;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ed$a$1;->a:Lcom/baidu/bdgame/sdk/obf/ed$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 89
    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ed$a$1;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 94
    if-nez p1, :cond_14

    if-eqz p3, :cond_14

    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ed$a$1;->a:Lcom/baidu/bdgame/sdk/obf/ed$a;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ed$a;->a(Lcom/baidu/bdgame/sdk/obf/ed$a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ed;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    .line 97
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ed$a$1;->a:Lcom/baidu/bdgame/sdk/obf/ed$a;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ed$a;->a(Lcom/baidu/bdgame/sdk/obf/ed$a;Lorg/json/JSONObject;)V

    .line 101
    :goto_13
    return-void

    .line 99
    :cond_14
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ed$a$1;->a:Lcom/baidu/bdgame/sdk/obf/ed$a;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ed$a;->b(Lcom/baidu/bdgame/sdk/obf/ed$a;)Lcom/baidu/bdgame/sdk/obf/o;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-interface {v0, v1, v2, v2}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_13
.end method
