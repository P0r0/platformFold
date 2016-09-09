.class final Lcom/bbkmobile/iqoo/payment/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbkmobile/iqoo/payment/CardActivity;


# direct methods
.method constructor <init>(Lcom/bbkmobile/iqoo/payment/CardActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/b;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/b;->a:Lcom/bbkmobile/iqoo/payment/CardActivity;

    invoke-virtual {v0}, Lcom/bbkmobile/iqoo/payment/CardActivity;->finish()V

    return-void
.end method
