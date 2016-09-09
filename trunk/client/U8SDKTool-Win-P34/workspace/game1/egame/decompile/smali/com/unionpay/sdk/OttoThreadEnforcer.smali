.class public interface abstract Lcom/unionpay/sdk/OttoThreadEnforcer;
.super Ljava/lang/Object;


# static fields
.field public static final ANY:Lcom/unionpay/sdk/OttoThreadEnforcer;

.field public static final MAIN:Lcom/unionpay/sdk/OttoThreadEnforcer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unionpay/sdk/o;

    invoke-direct {v0}, Lcom/unionpay/sdk/o;-><init>()V

    sput-object v0, Lcom/unionpay/sdk/OttoThreadEnforcer;->ANY:Lcom/unionpay/sdk/OttoThreadEnforcer;

    new-instance v0, Lcom/unionpay/sdk/p;

    invoke-direct {v0}, Lcom/unionpay/sdk/p;-><init>()V

    sput-object v0, Lcom/unionpay/sdk/OttoThreadEnforcer;->MAIN:Lcom/unionpay/sdk/OttoThreadEnforcer;

    return-void
.end method


# virtual methods
.method public abstract enforce(Lcom/unionpay/sdk/OttoBus;)V
.end method
