.class final Lcom/bbk/payment/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/SelectMoreChannelActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/SelectMoreChannelActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/au;->a:Lcom/bbk/payment/SelectMoreChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/bbk/payment/au;->a:Lcom/bbk/payment/SelectMoreChannelActivity;

    iget-object v1, p0, Lcom/bbk/payment/au;->a:Lcom/bbk/payment/SelectMoreChannelActivity;

    invoke-static {v1}, Lcom/bbk/payment/SelectMoreChannelActivity;->c(Lcom/bbk/payment/SelectMoreChannelActivity;)Lcom/bbk/payment/action/ChannelAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbk/payment/action/ChannelAdapter;->getSelectChannel()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bbk/payment/SelectMoreChannelActivity;->a(Lcom/bbk/payment/SelectMoreChannelActivity;I)V

    iget-object v0, p0, Lcom/bbk/payment/au;->a:Lcom/bbk/payment/SelectMoreChannelActivity;

    iget-object v1, p0, Lcom/bbk/payment/au;->a:Lcom/bbk/payment/SelectMoreChannelActivity;

    invoke-static {v1}, Lcom/bbk/payment/SelectMoreChannelActivity;->a(Lcom/bbk/payment/SelectMoreChannelActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/au;->a:Lcom/bbk/payment/SelectMoreChannelActivity;

    invoke-static {v2}, Lcom/bbk/payment/SelectMoreChannelActivity;->d(Lcom/bbk/payment/SelectMoreChannelActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/bbk/payment/util/UtilTool;->getPayTypeByPayId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbk/payment/SelectMoreChannelActivity;->a(Lcom/bbk/payment/SelectMoreChannelActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/au;->a:Lcom/bbk/payment/SelectMoreChannelActivity;

    invoke-static {v0}, Lcom/bbk/payment/SelectMoreChannelActivity;->e(Lcom/bbk/payment/SelectMoreChannelActivity;)V

    return-void
.end method
