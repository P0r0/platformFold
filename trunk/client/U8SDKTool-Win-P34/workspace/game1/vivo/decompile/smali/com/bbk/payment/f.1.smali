.class final Lcom/bbk/payment/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/CardActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/CardActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/f;->a:Lcom/bbk/payment/CardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/bbk/payment/f;->a:Lcom/bbk/payment/CardActivity;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bbk/payment/CardActivity;->a(Lcom/bbk/payment/CardActivity;ILandroid/os/Bundle;)V

    return-void
.end method