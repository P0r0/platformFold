.class final Lcom/vivo/assist/widget/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private synthetic a:Lcom/vivo/assist/widget/AssistView;


# direct methods
.method constructor <init>(Lcom/vivo/assist/widget/AssistView;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/assist/widget/a;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 12

    iget-object v0, p0, Lcom/vivo/assist/widget/a;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v1, p0, Lcom/vivo/assist/widget/a;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v1}, Lcom/vivo/assist/widget/AssistView;->getStatusHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;I)V

    return-void
.end method
