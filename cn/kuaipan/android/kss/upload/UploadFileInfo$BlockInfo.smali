.class public Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/kss/upload/UploadFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockInfo"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;->b:Ljava/lang/String;

    .line 37
    iput p3, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;->c:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcn/kuaipan/android/kss/upload/UploadFileInfo$1;)V
    .registers 5

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
