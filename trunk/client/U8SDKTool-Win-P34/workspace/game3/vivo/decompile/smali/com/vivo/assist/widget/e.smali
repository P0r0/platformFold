.class final Lcom/vivo/assist/widget/e;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/vivo/assist/widget/AssistView;


# direct methods
.method constructor <init>(Lcom/vivo/assist/widget/AssistView;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/assist/widget/e;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/assist/widget/e;->a:Lcom/vivo/assist/widget/AssistView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;Z)V

    iget-object v0, p0, Lcom/vivo/assist/widget/e;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->f(Lcom/vivo/assist/widget/AssistView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
