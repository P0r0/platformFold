.class public interface abstract Lcom/gionee/gsp/service/pay/IPay;
.super Ljava/lang/Object;
.source "IPay.java"


# static fields
.field public static final sGNPayUtil:Lcom/gionee/pay/util/GNPayUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    invoke-static {}, Lcom/gionee/pay/util/GNPayUtil;->getInstance()Lcom/gionee/pay/util/GNPayUtil;

    move-result-object v0

    sput-object v0, Lcom/gionee/gsp/service/pay/IPay;->sGNPayUtil:Lcom/gionee/pay/util/GNPayUtil;

    return-void
.end method
