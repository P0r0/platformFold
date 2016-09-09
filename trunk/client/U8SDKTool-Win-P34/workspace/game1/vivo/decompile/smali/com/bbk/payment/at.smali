.class final Lcom/bbk/payment/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/SelectMoreChannelActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/SelectMoreChannelActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/at;->a:Lcom/bbk/payment/SelectMoreChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbk/payment/at;->a:Lcom/bbk/payment/SelectMoreChannelActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/bbk/payment/SelectMoreChannelActivity;->a(Lcom/bbk/payment/SelectMoreChannelActivity;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
