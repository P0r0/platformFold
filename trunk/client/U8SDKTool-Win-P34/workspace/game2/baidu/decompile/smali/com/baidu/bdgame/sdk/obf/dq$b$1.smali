.class final Lcom/baidu/bdgame/sdk/obf/dq$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dq$b;->a()V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dq$b;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dq$b;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dq$b$1;->a:Lcom/baidu/bdgame/sdk/obf/dq$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 91
    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/dq$b$1;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 96
    if-nez p1, :cond_11

    if-eqz p3, :cond_11

    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dq$b$1;->a:Lcom/baidu/bdgame/sdk/obf/dq$b;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/dq$b;->a:Lcom/baidu/bdgame/sdk/obf/dq;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dq$b$1;->a:Lcom/baidu/bdgame/sdk/obf/dq$b;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/dq$b;->a(Lcom/baidu/bdgame/sdk/obf/dq$b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/baidu/bdgame/sdk/obf/dq;->a(Lcom/baidu/bdgame/sdk/obf/dq;Landroid/content/Context;Lorg/json/JSONObject;)Z

    .line 100
    :cond_11
    return-void
.end method
