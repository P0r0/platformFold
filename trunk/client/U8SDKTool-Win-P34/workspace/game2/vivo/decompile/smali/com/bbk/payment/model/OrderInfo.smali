.class public Lcom/bbk/payment/model/OrderInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static B:J

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static D:Ljava/lang/String;

.field public static custService:Ljava/lang/String;

.field private static l:J

.field public static logOnOff:Z

.field public static mIsRecharge:Z

.field public static payChannel:Ljava/lang/String;

.field public static vcoineventpoint:Z


# instance fields
.field private A:J

.field private C:I

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:J

.field private I:J

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    sput-wide v2, Lcom/bbk/payment/model/OrderInfo;->l:J

    sput-wide v2, Lcom/bbk/payment/model/OrderInfo;->B:J

    sput-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    sput-boolean v0, Lcom/bbk/payment/model/OrderInfo;->mIsRecharge:Z

    sput-boolean v0, Lcom/bbk/payment/model/OrderInfo;->vcoineventpoint:Z

    const-string v0, ""

    sput-object v0, Lcom/bbk/payment/model/OrderInfo;->custService:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/bbk/payment/model/OrderInfo;->payChannel:Ljava/lang/String;

    new-instance v0, Lcom/bbk/payment/model/a;

    invoke-direct {v0}, Lcom/bbk/payment/model/a;-><init>()V

    sput-object v0, Lcom/bbk/payment/model/OrderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->b:Ljava/lang/String;

    const-string v0, "00"

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->i:Ljava/lang/String;

    iput-wide v2, p0, Lcom/bbk/payment/model/OrderInfo;->j:J

    iput-wide v2, p0, Lcom/bbk/payment/model/OrderInfo;->k:J

    const-string v0, "0"

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->z:Ljava/lang/String;

    iput-wide v2, p0, Lcom/bbk/payment/model/OrderInfo;->A:J

    const-string v0, "0"

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->E:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->J:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->K:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/bbk/payment/model/OrderInfo;->D:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 39

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, ""

    iput-object v2, p0, Lcom/bbk/payment/model/OrderInfo;->a:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/bbk/payment/model/OrderInfo;->b:Ljava/lang/String;

    const-string v2, "00"

    iput-object v2, p0, Lcom/bbk/payment/model/OrderInfo;->c:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/bbk/payment/model/OrderInfo;->d:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/bbk/payment/model/OrderInfo;->e:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/bbk/payment/model/OrderInfo;->f:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/bbk/payment/model/OrderInfo;->g:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/bbk/payment/model/OrderInfo;->h:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/bbk/payment/model/OrderInfo;->i:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bbk/payment/model/OrderInfo;->j:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bbk/payment/model/OrderInfo;->k:J

    const-string v2, "0"

    iput-object v2, p0, Lcom/bbk/payment/model/OrderInfo;->r:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/bbk/payment/model/OrderInfo;->z:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bbk/payment/model/OrderInfo;->A:J

    const-string v2, "0"

    iput-object v2, p0, Lcom/bbk/payment/model/OrderInfo;->E:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/bbk/payment/model/OrderInfo;->J:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/bbk/payment/model/OrderInfo;->K:Ljava/lang/String;

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bbk/payment/model/OrderInfo;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbk/payment/model/OrderInfo;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/bbk/payment/model/OrderInfo;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/bbk/payment/model/OrderInfo;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/bbk/payment/model/OrderInfo;->i:Ljava/lang/String;

    iput-object p7, p0, Lcom/bbk/payment/model/OrderInfo;->b:Ljava/lang/String;

    iput-object p8, p0, Lcom/bbk/payment/model/OrderInfo;->c:Ljava/lang/String;

    iput-wide p9, p0, Lcom/bbk/payment/model/OrderInfo;->j:J

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->q:Ljava/lang/String;

    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/bbk/payment/model/OrderInfo;->k:J

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->r:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->G:Ljava/lang/String;

    move/from16 v0, p16

    iput v0, p0, Lcom/bbk/payment/model/OrderInfo;->C:I

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->z:Ljava/lang/String;

    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/bbk/payment/model/OrderInfo;->A:J

    sput-object p20, Lcom/bbk/payment/model/OrderInfo;->D:Ljava/lang/String;

    sput-wide p21, Lcom/bbk/payment/model/OrderInfo;->B:J

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->E:Ljava/lang/String;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->F:Ljava/lang/String;

    move-wide/from16 v0, p25

    iput-wide v0, p0, Lcom/bbk/payment/model/OrderInfo;->H:J

    move-wide/from16 v0, p27

    iput-wide v0, p0, Lcom/bbk/payment/model/OrderInfo;->I:J

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->h:Ljava/lang/String;

    sput-wide p30, Lcom/bbk/payment/model/OrderInfo;->l:J

    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->J:Ljava/lang/String;

    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->K:Ljava/lang/String;

    return-void
.end method

.method public static getCustService()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/bbk/payment/model/OrderInfo;->custService:Ljava/lang/String;

    return-object v0
.end method

.method public static setCustService(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/bbk/payment/model/OrderInfo;->custService:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getBlance()J
    .registers 3

    sget-wide v0, Lcom/bbk/payment/model/OrderInfo;->B:J

    return-wide v0
.end method

.method public getCard_amount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getCard_num()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getCard_pwd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getCard_type()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getDeductAmount()J
    .registers 3

    iget-wide v0, p0, Lcom/bbk/payment/model/OrderInfo;->H:J

    return-wide v0
.end method

.method public getExtInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getExtuserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getGameBlance()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .registers 2

    iget v0, p0, Lcom/bbk/payment/model/OrderInfo;->t:I

    return v0
.end method

.method public getNeedAmount()J
    .registers 3

    iget-wide v0, p0, Lcom/bbk/payment/model/OrderInfo;->I:J

    return-wide v0
.end method

.method public getPackageN()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getParty()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentType()I
    .registers 2

    iget v0, p0, Lcom/bbk/payment/model/OrderInfo;->C:I

    return v0
.end method

.method public getPrice()J
    .registers 3

    iget-wide v0, p0, Lcom/bbk/payment/model/OrderInfo;->j:J

    return-wide v0
.end method

.method public getProductDes()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getRechargeOrderAmount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->G:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "0"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->G:Ljava/lang/String;

    goto :goto_6
.end method

.method public getRechargeOrderNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainderBlance()J
    .registers 3

    iget-wide v0, p0, Lcom/bbk/payment/model/OrderInfo;->k:J

    return-wide v0
.end method

.method public getRemainderBlanceY()J
    .registers 3

    sget-wide v0, Lcom/bbk/payment/model/OrderInfo;->l:J

    return-wide v0
.end method

.method public getResult_code()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bbk/payment/model/OrderInfo;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getSk()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->K:Ljava/lang/String;

    return-object v0
.end method

.method public getTicketAmount()J
    .registers 3

    iget-wide v0, p0, Lcom/bbk/payment/model/OrderInfo;->A:J

    return-wide v0
.end method

.method public getTicketCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getTicketHasChanged()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->E:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->J:Ljava/lang/String;

    return-object v0
.end method

.method public getTransNo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUseMode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getVip()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitor()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/model/OrderInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->q:Ljava/lang/String;

    return-void
.end method

.method public setBlance(J)V
    .registers 4

    sput-wide p1, Lcom/bbk/payment/model/OrderInfo;->B:J

    return-void
.end method

.method public setCard_amount(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->o:Ljava/lang/String;

    return-void
.end method

.method public setCard_num(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->m:Ljava/lang/String;

    return-void
.end method

.method public setCard_pwd(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->n:Ljava/lang/String;

    return-void
.end method

.method public setCard_type(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->p:Ljava/lang/String;

    return-void
.end method

.method public setDeductAmount(J)V
    .registers 4

    iput-wide p1, p0, Lcom/bbk/payment/model/OrderInfo;->H:J

    return-void
.end method

.method public setExtInfo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->y:Ljava/lang/String;

    return-void
.end method

.method public setExtuserId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public setGameBlance(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->r:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/model/OrderInfo;->t:I

    return-void
.end method

.method public setNeedAmount(J)V
    .registers 4

    iput-wide p1, p0, Lcom/bbk/payment/model/OrderInfo;->I:J

    return-void
.end method

.method public setPackageN(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setParty(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->u:Ljava/lang/String;

    return-void
.end method

.method public setPaymentType(I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/model/OrderInfo;->C:I

    return-void
.end method

.method public setPrice(J)V
    .registers 4

    iput-wide p1, p0, Lcom/bbk/payment/model/OrderInfo;->j:J

    return-void
.end method

.method public setProductDes(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setRechargeOrderAmount(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->G:Ljava/lang/String;

    return-void
.end method

.method public setRechargeOrderNumber(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->F:Ljava/lang/String;

    return-void
.end method

.method public setRemainderBlance(J)V
    .registers 4

    iput-wide p1, p0, Lcom/bbk/payment/model/OrderInfo;->k:J

    return-void
.end method

.method public setRemainderBlanceY(J)V
    .registers 4

    sput-wide p1, Lcom/bbk/payment/model/OrderInfo;->l:J

    return-void
.end method

.method public setResult_code(Ljava/lang/String;)V
    .registers 2

    sput-object p1, Lcom/bbk/payment/model/OrderInfo;->D:Ljava/lang/String;

    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->v:Ljava/lang/String;

    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->w:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->x:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public setSk(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->K:Ljava/lang/String;

    return-void
.end method

.method public setTicketAmount(J)V
    .registers 4

    iput-wide p1, p0, Lcom/bbk/payment/model/OrderInfo;->A:J

    return-void
.end method

.method public setTicketCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->z:Ljava/lang/String;

    return-void
.end method

.method public setTicketHasChanged(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->E:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->J:Ljava/lang/String;

    return-void
.end method

.method public setTransNo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setUseMode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public setVip(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->s:Ljava/lang/String;

    return-void
.end method

.method public setVisitor(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/model/OrderInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{transNo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbk/payment/model/OrderInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",productName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbk/payment/model/OrderInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",productDes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbk/payment/model/OrderInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",packageN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbk/payment/model/OrderInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",useMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbk/payment/model/OrderInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbk/payment/model/OrderInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",price:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/bbk/payment/model/OrderInfo;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",signature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbk/payment/model/OrderInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbk/payment/model/OrderInfo;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",remainderBlance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/bbk/payment/model/OrderInfo;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",rechargeOrderAmount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbk/payment/model/OrderInfo;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",gameBlance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbk/payment/model/OrderInfo;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ticketCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbk/payment/model/OrderInfo;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ticketAmount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/bbk/payment/model/OrderInfo;->A:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",result_code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/bbk/payment/model/OrderInfo;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",blance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/bbk/payment/model/OrderInfo;->B:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",ticketHasChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbk/payment/model/OrderInfo;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",rechargeOrderNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbk/payment/model/OrderInfo;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",deductAmount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/bbk/payment/model/OrderInfo;->H:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",needAmount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/bbk/payment/model/OrderInfo;->I:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",visitor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbk/payment/model/OrderInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",remainderBlanceY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/bbk/payment/model/OrderInfo;->l:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getProductDes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getExtuserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getUseMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getRemainderBlance()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getGameBlance()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getRechargeOrderAmount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getPaymentType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getTicketCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getResult_code()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getBlance()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getTicketHasChanged()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getRechargeOrderNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getDeductAmount()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getNeedAmount()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getVisitor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getRemainderBlanceY()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/model/OrderInfo;->getSk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
