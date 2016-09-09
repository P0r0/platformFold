.class public final Lcn/egame/terminal/miniapay/b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    if-ge p3, v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/egame/terminal/miniapay/b;->a:Ljava/lang/String;

    :goto_1c
    iput-object p4, p0, Lcn/egame/terminal/miniapay/b;->b:Ljava/lang/String;

    iput-object p7, p0, Lcn/egame/terminal/miniapay/b;->c:Ljava/lang/String;

    return-void

    :cond_21
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/egame/terminal/miniapay/b;->a:Ljava/lang/String;

    goto :goto_1c
.end method
