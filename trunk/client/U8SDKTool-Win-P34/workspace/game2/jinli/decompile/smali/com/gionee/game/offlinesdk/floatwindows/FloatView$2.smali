.class Lcom/gionee/game/offlinesdk/floatwindows/FloatView$2;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Lcom/gionee/game/offlinesdk/listener/GameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gionee/game/offlinesdk/floatwindows/FloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;


# direct methods
.method constructor <init>(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$2;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onEvent(I[Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # I
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 48
    new-instance v0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$2$1;

    invoke-direct {v0, p0, p1}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$2$1;-><init>(Lcom/gionee/game/offlinesdk/floatwindows/FloatView$2;I)V

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->post(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method
