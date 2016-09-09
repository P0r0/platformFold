.class public final Lcom/bbk/payment/provider/DBAdapter$EventTable;
.super Ljava/lang/Object;


# static fields
.field public static final APP_TABLE:Ljava/lang/String; = "events"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "eventtime DESC"

.field public static final KEY_EVENT_CODE:Ljava/lang/String; = "eventcode"

.field public static final KEY_EVENT_TIME:Ljava/lang/String; = "eventtime"

.field public static final KEY_EVENT_VALUE:Ljava/lang/String; = "eventvalue"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_PACKAGE:Ljava/lang/String; = "packageName"

.field public static final KEY_USERID:Ljava/lang/String; = "uid"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.bbk.payment/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/bbk/payment/provider/DBAdapter$EventTable;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
