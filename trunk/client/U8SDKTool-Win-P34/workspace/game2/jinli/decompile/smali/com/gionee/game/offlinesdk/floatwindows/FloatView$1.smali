.class Lcom/gionee/game/offlinesdk/floatwindows/FloatView$1;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 36
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$1;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$1;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    # invokes: Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->goEdge()V
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->access$000(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)V

    .line 41
    return-void
.end method
