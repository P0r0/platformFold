.class final Lcom/baidu/bdgame/sdk/obf/ck$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ck$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ck$a;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ck$a;)V
    .registers 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ck$a$1;->a:Lcom/baidu/bdgame/sdk/obf/ck$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ck$a$1;->a:Lcom/baidu/bdgame/sdk/obf/ck$a;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ck$a;->a(Lcom/baidu/bdgame/sdk/obf/ck$a;)V

    .line 193
    return-void
.end method
