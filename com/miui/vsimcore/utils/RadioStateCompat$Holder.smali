.class Lcom/miui/vsimcore/utils/RadioStateCompat$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/vsimcore/utils/RadioStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final a:Lcom/miui/vsimcore/utils/RadioStateCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/miui/vsimcore/utils/RadioStateCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/vsimcore/utils/RadioStateCompat;-><init>(Lcom/miui/vsimcore/utils/RadioStateCompat$1;)V

    sput-object v0, Lcom/miui/vsimcore/utils/RadioStateCompat$Holder;->a:Lcom/miui/vsimcore/utils/RadioStateCompat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
