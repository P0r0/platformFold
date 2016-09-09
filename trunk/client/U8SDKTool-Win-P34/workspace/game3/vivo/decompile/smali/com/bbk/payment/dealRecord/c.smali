.class final Lcom/bbk/payment/dealRecord/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bbk/payment/dealRecord/VivoFootRefreshListView$VivoPullRefreshListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/dealRecord/c;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadMore()V
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/c;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->e(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->a(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;I)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/c;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->sendDealRequest()V

    return-void
.end method

.method public final onRefresh()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/c;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v0, v1}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->a(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;I)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/c;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->h(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->setPullLoadEnable(Z)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/c;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->sendDealRequest()V

    return-void
.end method
