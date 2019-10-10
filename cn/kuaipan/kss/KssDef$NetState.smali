.class public final enum Lcn/kuaipan/kss/KssDef$NetState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/kss/KssDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/kuaipan/kss/KssDef$NetState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/kuaipan/kss/KssDef$NetState;

.field public static final enum b:Lcn/kuaipan/kss/KssDef$NetState;

.field public static final enum c:Lcn/kuaipan/kss/KssDef$NetState;

.field public static final enum d:Lcn/kuaipan/kss/KssDef$NetState;

.field public static final enum e:Lcn/kuaipan/kss/KssDef$NetState;

.field private static final synthetic f:[Lcn/kuaipan/kss/KssDef$NetState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 29
    new-instance v0, Lcn/kuaipan/kss/KssDef$NetState;

    const-string v1, "Wifi"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/kss/KssDef$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDef$NetState;->a:Lcn/kuaipan/kss/KssDef$NetState;

    .line 30
    new-instance v0, Lcn/kuaipan/kss/KssDef$NetState;

    const-string v1, "UNKNOWN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcn/kuaipan/kss/KssDef$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDef$NetState;->b:Lcn/kuaipan/kss/KssDef$NetState;

    .line 31
    new-instance v0, Lcn/kuaipan/kss/KssDef$NetState;

    const-string v1, "MN4G"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcn/kuaipan/kss/KssDef$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDef$NetState;->c:Lcn/kuaipan/kss/KssDef$NetState;

    .line 32
    new-instance v0, Lcn/kuaipan/kss/KssDef$NetState;

    const-string v1, "MN3G"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcn/kuaipan/kss/KssDef$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDef$NetState;->d:Lcn/kuaipan/kss/KssDef$NetState;

    .line 33
    new-instance v0, Lcn/kuaipan/kss/KssDef$NetState;

    const-string v1, "MN2G"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcn/kuaipan/kss/KssDef$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDef$NetState;->e:Lcn/kuaipan/kss/KssDef$NetState;

    const/4 v0, 0x5

    .line 28
    new-array v0, v0, [Lcn/kuaipan/kss/KssDef$NetState;

    sget-object v1, Lcn/kuaipan/kss/KssDef$NetState;->a:Lcn/kuaipan/kss/KssDef$NetState;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuaipan/kss/KssDef$NetState;->b:Lcn/kuaipan/kss/KssDef$NetState;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuaipan/kss/KssDef$NetState;->c:Lcn/kuaipan/kss/KssDef$NetState;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuaipan/kss/KssDef$NetState;->d:Lcn/kuaipan/kss/KssDef$NetState;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuaipan/kss/KssDef$NetState;->e:Lcn/kuaipan/kss/KssDef$NetState;

    aput-object v1, v0, v6

    sput-object v0, Lcn/kuaipan/kss/KssDef$NetState;->f:[Lcn/kuaipan/kss/KssDef$NetState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuaipan/kss/KssDef$NetState;
    .registers 2

    .line 28
    const-class v0, Lcn/kuaipan/kss/KssDef$NetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/kuaipan/kss/KssDef$NetState;

    return-object p0
.end method

.method public static values()[Lcn/kuaipan/kss/KssDef$NetState;
    .registers 1

    .line 28
    sget-object v0, Lcn/kuaipan/kss/KssDef$NetState;->f:[Lcn/kuaipan/kss/KssDef$NetState;

    invoke-virtual {v0}, [Lcn/kuaipan/kss/KssDef$NetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuaipan/kss/KssDef$NetState;

    return-object v0
.end method
