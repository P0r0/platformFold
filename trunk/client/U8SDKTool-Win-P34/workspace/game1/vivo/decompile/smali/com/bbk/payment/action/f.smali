.class final Lcom/bbk/payment/action/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/action/ChannelAdapter;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/bbk/payment/action/ChannelAdapter;I)V
    .registers 3

    iput-object p1, p0, Lcom/bbk/payment/action/f;->a:Lcom/bbk/payment/action/ChannelAdapter;

    iput p2, p0, Lcom/bbk/payment/action/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "ChannelAdapter"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/action/f;->a:Lcom/bbk/payment/action/ChannelAdapter;

    iget v1, p0, Lcom/bbk/payment/action/f;->b:I

    invoke-static {v0, v1}, Lcom/bbk/payment/action/ChannelAdapter;->a(Lcom/bbk/payment/action/ChannelAdapter;I)V

    iget-object v0, p0, Lcom/bbk/payment/action/f;->a:Lcom/bbk/payment/action/ChannelAdapter;

    invoke-virtual {v0}, Lcom/bbk/payment/action/ChannelAdapter;->notifyDataSetChanged()V

    return-void
.end method
