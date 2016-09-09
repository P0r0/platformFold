.class final Lcom/bbk/payment/dealRecord/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/dealRecord/f;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/f;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;->finish()V

    return-void
.end method
