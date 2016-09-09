.class public Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/NoProguard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/home/datamodel/HomeCfgResponseVip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Category"
.end annotation


# instance fields
.field public data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

.field public fingerprint:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mergeTwo(Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;)Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;
    .registers 3

    if-eqz p1, :cond_b

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    array-length v0, v0

    if-ltz v0, :cond_c

    :cond_b
    move-object p0, p1

    :cond_c
    return-object p0
.end method


# virtual methods
.method public hasData()Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    array-length v1, v1

    if-nez v1, :cond_b

    :cond_a
    return v0

    :cond_b
    iget-object v2, p0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    array-length v3, v2

    move v1, v0

    :goto_f
    if-ge v1, v3, :cond_a

    aget-object v4, v2, v1

    iget-object v5, v4, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;->list:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;

    if-eqz v5, :cond_1d

    iget-object v4, v4, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;->list:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;

    array-length v4, v4

    if-lez v4, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public sort()V
    .registers 7

    iget-object v0, p0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    array-length v0, v0

    if-nez v0, :cond_a

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Category;->data:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v2, :cond_9

    aget-object v3, v1, v0

    iget-object v4, v3, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;->list:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;

    if-eqz v4, :cond_21

    iget-object v4, v3, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;->list:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;

    array-length v4, v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_24

    :cond_21
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_24
    iget-object v3, v3, Lcom/baidu/home/datamodel/HomeCfgResponseVip$Group;->list:[Lcom/baidu/home/datamodel/HomeCfgResponseVip$Item;

    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_21
.end method
