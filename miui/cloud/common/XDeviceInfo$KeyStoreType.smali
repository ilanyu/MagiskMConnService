.class public final enum Lmiui/cloud/common/XDeviceInfo$KeyStoreType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/common/XDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyStoreType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/cloud/common/XDeviceInfo$KeyStoreType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

.field public static final enum b:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

.field private static final synthetic d:[Lmiui/cloud/common/XDeviceInfo$KeyStoreType;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 41
    new-instance v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    const-string v1, "TZ"

    const-string v2, "TZ"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->a:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    new-instance v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    const-string v1, "NONE"

    const-string v2, "NONE"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->b:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    const/4 v0, 0x2

    .line 40
    new-array v0, v0, [Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    sget-object v1, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->a:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->b:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->d:[Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/cloud/common/XDeviceInfo$KeyStoreType;
    .registers 2

    .line 40
    const-class v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-object p0
.end method

.method public static values()[Lmiui/cloud/common/XDeviceInfo$KeyStoreType;
    .registers 1

    .line 40
    sget-object v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->d:[Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    invoke-virtual {v0}, [Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->c:Ljava/lang/String;

    return-object v0
.end method
