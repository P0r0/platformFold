.class final Lcom/baidu/bdgame/sdk/obf/dg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/de$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dg;->a(Lcom/baidu/bdgame/sdk/obf/de$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dg;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dg;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dg$1;->a:Lcom/baidu/bdgame/sdk/obf/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/baidu/bdgame/sdk/obf/iy;J)V
    .registers 6

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg$1;->a:Lcom/baidu/bdgame/sdk/obf/dg;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dg;->a(Lcom/baidu/bdgame/sdk/obf/dg;)Lcom/baidu/bdgame/sdk/obf/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/di;->a()Lcom/baidu/bdgame/sdk/obf/di$a;

    move-result-object v0

    if-nez v0, :cond_d

    .line 61
    :goto_c
    return-void

    .line 50
    :cond_d
    packed-switch p1, :pswitch_data_3c

    :pswitch_10
    goto :goto_c

    .line 52
    :pswitch_11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg$1;->a:Lcom/baidu/bdgame/sdk/obf/dg;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dg;->a(Lcom/baidu/bdgame/sdk/obf/dg;)Lcom/baidu/bdgame/sdk/obf/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/di;->a()Lcom/baidu/bdgame/sdk/obf/di$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/di$a;->a()V

    goto :goto_c

    .line 55
    :pswitch_1f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg$1;->a:Lcom/baidu/bdgame/sdk/obf/dg;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dg;->a(Lcom/baidu/bdgame/sdk/obf/dg;)Lcom/baidu/bdgame/sdk/obf/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/di;->a()Lcom/baidu/bdgame/sdk/obf/di$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/baidu/bdgame/sdk/obf/di$a;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    goto :goto_c

    .line 58
    :pswitch_2d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg$1;->a:Lcom/baidu/bdgame/sdk/obf/dg;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dg;->a(Lcom/baidu/bdgame/sdk/obf/dg;)Lcom/baidu/bdgame/sdk/obf/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/di;->a()Lcom/baidu/bdgame/sdk/obf/di$a;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/di$a;->a(Lcom/baidu/bdgame/sdk/obf/iy;J)V

    goto :goto_c

    .line 50
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_1f
        :pswitch_10
        :pswitch_2d
    .end packed-switch
.end method
