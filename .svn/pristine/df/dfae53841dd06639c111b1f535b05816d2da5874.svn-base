.class final Lcom/bbk/payment/dealRecord/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/dealRecord/d;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/d;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->a(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/bbk/payment/dealRecord/VivoDealRecordDetailActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;

    const-string v2, "VivoDealRecordActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "position: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " infos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bbk/payment/dealRecord/d;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-static {v4}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->c(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dealItem"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/d;->a:Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
