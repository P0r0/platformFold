.class final Lcom/chinaMobile/udata/charge/mini/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/chinaMobile/udata/charge/mini/a;


# direct methods
.method constructor <init>(Lcom/chinaMobile/udata/charge/mini/a;)V
    .registers 2

    iput-object p1, p0, Lcom/chinaMobile/udata/charge/mini/o;->a:Lcom/chinaMobile/udata/charge/mini/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/chinaMobile/udata/charge/mini/o;->a:Lcom/chinaMobile/udata/charge/mini/a;

    invoke-virtual {v0}, Lcom/chinaMobile/udata/charge/mini/a;->dismiss()V

    return-void
.end method
