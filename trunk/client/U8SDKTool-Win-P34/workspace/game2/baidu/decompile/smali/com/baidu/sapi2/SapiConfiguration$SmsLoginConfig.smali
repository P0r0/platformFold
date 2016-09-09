.class public Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;
.super Ljava/lang/Object;
.source "SapiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/SapiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsLoginConfig"
.end annotation


# instance fields
.field public final flagLoginBtnType:Lcom/baidu/sapi2/utils/enums/Switch;

.field public final flagShowFastRegLink:Lcom/baidu/sapi2/utils/enums/Switch;

.field public final flagShowLoginLink:Lcom/baidu/sapi2/utils/enums/Switch;

.field public final flagShowSmsLoginLink:Lcom/baidu/sapi2/utils/enums/Switch;


# direct methods
.method public constructor <init>(Lcom/baidu/sapi2/utils/enums/Switch;Lcom/baidu/sapi2/utils/enums/Switch;Lcom/baidu/sapi2/utils/enums/Switch;)V
    .registers 5
    .param p1, "flagShowLoginLink"    # Lcom/baidu/sapi2/utils/enums/Switch;
    .param p2, "flagShowSmsLoginLink"    # Lcom/baidu/sapi2/utils/enums/Switch;
    .param p3, "flagLoginBtnType"    # Lcom/baidu/sapi2/utils/enums/Switch;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param

    .prologue
    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    if-nez p1, :cond_7

    .line 609
    sget-object p1, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    .line 611
    :cond_7
    if-nez p2, :cond_b

    .line 612
    sget-object p2, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    .line 614
    :cond_b
    if-nez p3, :cond_f

    .line 615
    sget-object p3, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    .line 617
    :cond_f
    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagShowLoginLink:Lcom/baidu/sapi2/utils/enums/Switch;

    .line 618
    iput-object p2, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagShowSmsLoginLink:Lcom/baidu/sapi2/utils/enums/Switch;

    .line 619
    iput-object p3, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagLoginBtnType:Lcom/baidu/sapi2/utils/enums/Switch;

    .line 620
    sget-object v0, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagShowFastRegLink:Lcom/baidu/sapi2/utils/enums/Switch;

    .line 621
    return-void
.end method

.method public constructor <init>(Lcom/baidu/sapi2/utils/enums/Switch;Lcom/baidu/sapi2/utils/enums/Switch;Lcom/baidu/sapi2/utils/enums/Switch;Lcom/baidu/sapi2/utils/enums/Switch;)V
    .registers 5
    .param p1, "flagShowLoginLink"    # Lcom/baidu/sapi2/utils/enums/Switch;
    .param p2, "flagShowSmsLoginLink"    # Lcom/baidu/sapi2/utils/enums/Switch;
    .param p3, "flagLoginBtnType"    # Lcom/baidu/sapi2/utils/enums/Switch;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .param p4, "flagShowFastRegLink"    # Lcom/baidu/sapi2/utils/enums/Switch;

    .prologue
    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    if-nez p1, :cond_7

    .line 628
    sget-object p1, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    .line 630
    :cond_7
    if-nez p2, :cond_b

    .line 631
    sget-object p2, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    .line 633
    :cond_b
    if-nez p3, :cond_f

    .line 634
    sget-object p3, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    .line 636
    :cond_f
    if-nez p4, :cond_13

    .line 637
    sget-object p4, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    .line 639
    :cond_13
    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagShowLoginLink:Lcom/baidu/sapi2/utils/enums/Switch;

    .line 640
    iput-object p2, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagShowSmsLoginLink:Lcom/baidu/sapi2/utils/enums/Switch;

    .line 641
    iput-object p3, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagLoginBtnType:Lcom/baidu/sapi2/utils/enums/Switch;

    .line 642
    iput-object p4, p0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagShowFastRegLink:Lcom/baidu/sapi2/utils/enums/Switch;

    .line 643
    return-void
.end method
