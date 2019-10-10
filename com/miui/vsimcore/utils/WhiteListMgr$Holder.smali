.class Lcom/miui/vsimcore/utils/WhiteListMgr$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/vsimcore/utils/WhiteListMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final a:Lcom/miui/vsimcore/utils/WhiteListMgr;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/miui/vsimcore/utils/WhiteListMgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;-><init>(Lcom/miui/vsimcore/utils/WhiteListMgr$1;)V

    sput-object v0, Lcom/miui/vsimcore/utils/WhiteListMgr$Holder;->a:Lcom/miui/vsimcore/utils/WhiteListMgr;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
