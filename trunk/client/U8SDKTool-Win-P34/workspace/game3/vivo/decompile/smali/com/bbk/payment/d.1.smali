.class final Lcom/bbk/payment/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/bbk/payment/c;


# direct methods
.method constructor <init>(Lcom/bbk/payment/c;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/d;->a:Lcom/bbk/payment/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/bbk/payment/d;->a:Lcom/bbk/payment/c;

    invoke-static {v0}, Lcom/bbk/payment/c;->a(Lcom/bbk/payment/c;)Lcom/bbk/payment/CardActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bbk/payment/CardActivity;->u(Lcom/bbk/payment/CardActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bbk/payment/d;->a:Lcom/bbk/payment/c;

    invoke-static {v2}, Lcom/bbk/payment/c;->a(Lcom/bbk/payment/c;)Lcom/bbk/payment/CardActivity;

    move-result-object v2

    const/16 v3, 0xcd

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->dipToPix(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
